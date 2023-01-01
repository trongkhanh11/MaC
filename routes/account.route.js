import express from 'express';
import bcrypt from 'bcryptjs';
import moment from 'moment';

import userService from '../services/user.service.js';
import authWithRequiredPermission from '../middlewares/auth.mdw.js';

const router = express.Router();

router.get('/register', function (req, res) {
  res.render('vwAccount/register');
})

router.post('/register', async function (req, res) {
  const hash = bcrypt.hashSync(req.body.password, bcrypt.genSaltSync(10));

  const dob = moment(req.body.dob, 'DD/MM/YYYY').format('YYYY-MM-DD');

  const user = {
    username: req.body.username,
    pass: hash,
    hoten: req.body.name,
    email: req.body.email,
    ntnsinh: dob,
    adminacc: 0
  }
  await userService.add(user);
  res.render('vwAccount/register');
})

router.get('/is-available', async function (req, res) {
  const username = req.query.user;
  const user = await userService.findByUsername(username);
  if (user === null)
    return res.json(true);

  res.json(false);
})


router.get('/login', function (req, res) {
  res.render('vwAccount/login', { layout: false });
})

router.post('/login', async function (req, res) {
  const user = await userService.findByUsername(req.body.username);
  if (user === null) {
    return res.render('vwAccount/login', {
      layout: false,
      err_message: 'Invalid username or password.'
    });
  }

  const ret = bcrypt.compareSync(req.body.password, user.PASS); 

  if (ret === false) {
    return res.render('vwAccount/login', {
      layout: false,
      err_message: 'Invalid username or password.'
    });
  }

  req.session.auth = true;
  req.session.authUser = user;

  const url = req.session.retUrl || '/';
  delete req.session.retUrl;
  res.redirect(url);
})

router.post('/logout', function (req, res) {
  req.session.auth = false;
  req.session.authUser = null;

  const url = req.headers.referer || '/';
  res.redirect(url);
})

router.get('/profile', authWithRequiredPermission(1), function (req, res) {
  res.render('vwAccount/profile');
})

export default router;
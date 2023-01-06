import express from 'express';
import bcrypt from 'bcryptjs';
import moment from 'moment';

import userService from '../services/user.service.js';
import authWithRequiredPermission from '../middlewares/auth.mdw.js';

const router = express.Router();

router.post('/register', async function (req, res) {
  const salt = bcrypt.genSaltSync(10);
  const hash = bcrypt.hashSync(req.body.password, salt);

  const dob = moment(req.body.dob, 'DD/MM/YYYY').format('YYYY-MM-DD');
  var currentDate = moment().format('YYYY-MM-DD');

  const user = {
    username: req.body.username,
    pass: hash,
    hoten: req.body.name,
    email: req.body.email,
    ntnsinh: dob,
    ngaytg: currentDate,
    adminacc: 0
  }

  console.log(user);
  await userService.add(user);

  // res.render('vwAccount/login');
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
      err_message: 'Invalid username or password.',
      messageClass: 'alert-danger'
    });
  }

  const ret = bcrypt.compareSync(req.body.password, user.PASS); 

  if (ret === false) {
    return res.render('vwAccount/login', {
      layout: false,
      err_message: 'Invalid username or password.',
      messageClass: 'alert-danger'
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
  res.render('vwAccount/profile', {
    hoten: req.session.authUser.HOTEN,
    email: req.session.authUser.EMAIL,
  });
})

router.post('/profile', authWithRequiredPermission(1), async function (req, res) {
  console.log(req.session.authUser.ID);
  const ret = bcrypt.compareSync(req.body.password, req.session.authUser.PASS);
  if (ret === false) {
    return res.render('vwAccount/profile', {
      layout: false,
      err_message: 'Invalid username or password.'
    });
  }

  await userService.patch(req.session.authUser.ID, req.body.name, req.body.email);
  res.render('vwAccount/profile');
});

export default router;
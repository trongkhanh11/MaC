import express from 'express';
import bcrypt from 'bcryptjs';
import moment from 'moment';

import userModel from '../services/user.model.js';

const router = express.Router();

router.get('/profile', async function (req, res) {
  res.render('vwAccount/profile');
});

router.get('/login', async function (req, res) {
  res.render('vwAccount/login', {
    layout: false
  });
});

router.post('/login', async function (req, res) {
  const user = await userModel.findByUsername(req.body.username);

  if (user === null) {
    return res.render('vwAccount/login', {
      layout: false,
      err_message: 'Invalid username or password'
    });
  }

  const ret = bcrypt.compareSync(req.body.pass, user.PASS);
  if (ret === false) {
    return res.render('vwAccount/login', {
      layout: false,
      err_message: 'Invalid username or password'
    });
  }

  req.session.auth = true;
  req.session.authUser = user;

  const url = req.session.retUrl || '/';
  delete req.session.retUrl;
  res.redirect(url);
});

router.get('/signup', async function (req, res) {
  res.render('vwAccount/login', {
    layout: false
  });
});

router.post('/signup', async function (req, res) {
  const rawPassword = req.body.pass;
  const salt = bcrypt.genSaltSync(10);
  const hash = bcrypt.hashSync(rawPassword, salt);

  const dob = moment(req.body.ntnsinh, 'DD/MM/YYYY').format('YYYY-MM-DD');

  var date = moment();
  var currentDate = date.format('YYYY-MM-DD');

  const user = {
    hoten: req.body.hoten,
    username: req.body.username,
    email: req.body.email,
    pass: hash,
    ntnsinh: dob,
    ngaytg: currentDate,
    adminacc: 0,
    onl: 0,
    ban: 0
  }

  await userModel.add(user);

  res.render('vwAccount/login', {
    layout: false
  });
});

router.get('/is-available', async function (req, res) {
  const username = req.query.user;
  const user = await userModel.findByUsername(username);

  if(user === null) {
    return res.json(true);
  }

  res.json(false);
});

router.post('/logout', function (req, res) {
  req.session.auth = false;
  req.session.authUser = null;

  const url = req.headers.referer || '/';
  res.redirect(url);
});

export default router;
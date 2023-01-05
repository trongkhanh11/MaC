import express from 'express';

const router = express.Router();

router.get('/profile', async function (req, res) {
  res.render('vwAccount/profile');
});

router.get('/login', async function (req, res) {
  res.render('vwAccount/login', {
    layout: false
  });
});

export default router;
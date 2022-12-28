import express from 'express';
import accountRoute from '../routes/account.route.js';
import videoTutorialRoute from '../routes/videoTutorial.route.js'

export default function (app) {
  app.get('/', function (req, res) {
    res.render('home');
  })

  app.use('/account', accountRoute, express.static('public'));
  app.use('/videoTutorial', videoTutorialRoute, express.static('public'));
}
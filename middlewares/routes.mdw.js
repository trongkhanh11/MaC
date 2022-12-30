import express from 'express';
import accountRoute from '../routes/account.route.js';
import videoTutorialRoute from '../routes/videoTutorial.route.js'
import playlistRoute from '../routes/playlist.route.js'

export default function (app) {
  app.get('/', function (req, res) {
    res.render('home');
  })

  app.use('/account', accountRoute, express.static('public'));
  app.use('/videoTutorial', videoTutorialRoute, express.static('public'));
  app.use('/playlist', playlistRoute, express.static('public'));
}
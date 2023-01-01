import express from 'express';
import accountRoute from '../routes/account.route.js';
import videoTutorialRoute from '../routes/videoTutorial.route.js'
import postRoute from '../routes/Post.route.js'
import postvideoRoute from '../routes/PostVideo.route.js'
import requestsongRoute from '../routes/RequestSong.route.js'

export default function (app) {
  app.get('/', function (req, res) {
    res.render('home');
  })

  app.use('/account', accountRoute, express.static('public'));
  app.use('/videoTutorial', videoTutorialRoute, express.static('public'));
  app.use('/Post', postRoute, express.static('public'));
  app.use('/PostVideo', postvideoRoute, express.static('public'));
  app.use('/RequestNewSong', requestsongRoute, express.static('public'));
}
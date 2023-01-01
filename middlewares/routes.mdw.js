import express from 'express';
import accountRoute from '../routes/account.route.js';
import videoTutorialRoute from '../routes/videoTutorial.route.js'
import chordRoute from '../routes/chord.route.js';
import authWithRequiredPermission from './auth.mdw.js';

export default function (app) {
  app.get('/', function (req, res) {
    res.render('home');
  })


  app.get('/err', function (req, res) {
    throw new Error('Something broke!');
  })


  app.use('/account', accountRoute, express.static('public'));
  app.use('/videoTutorial', videoTutorialRoute, express.static('public'));
  app.use('/chord', authWithRequiredPermission(1) ,chordRoute, express.static('public'));
}
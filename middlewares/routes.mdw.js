import express from 'express';
import accountRoute from '../routes/account.route.js';
import videoTutorialRoute from '../routes/videoTutorial.route.js'
import postRoute from '../routes/Post.route.js'
import postvideoRoute from '../routes/PostVideo.route.js'
import requestsongRoute from '../routes/RequestSong.route.js'
import playlistRoute from '../routes/Playlist.route.js'
import songRoute from '../routes/Song.route.js'
import viewSearch from '../routes/Search.route.js'
import adminRoute from '../routes/admin.route.js'


// export default function (app) {
//   app.get('/', function (req, res) {
//     res.render('vwAdmin/index', {
//       layout: false
//     });
//   })

  export default function (app) {
    app.get('/', function (req, res) {
      res.render('home');
    })

  app.get('/err', function (req, res) {
    throw new Error('Something broke!');
  })


  app.use('/account', accountRoute, express.static('public'));
  app.use('/videoTutorial', videoTutorialRoute, express.static('public'));
  app.use('/Post', postRoute, express.static('public'));
  app.use('/PostVideo', postvideoRoute, express.static('public'));
  app.use('/RequestNewSong', requestsongRoute, express.static('public'));
  app.use('/Playlist', playlistRoute, express.static('public'));
  app.use('/Song', songRoute, express.static('public'));
  app.use('/search', viewSearch, express.static('public'));
  app.use('/admin', adminRoute, express.static('public'));
}
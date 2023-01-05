import express from 'express';

const router = express.Router();

router.get('/', async function (req, res) {
  res.render('vwPlaylist/Playlist');
});

router.get('/inplaylist', async function (req, res) {
  res.render('vwPlaylist/inplaylist');
});

router.get('/yourplaylist', async function (req, res) {
  res.render('vwPlaylist/yourplaylist');
});

export default router;
import express from 'express';

const router = express.Router();

router.get('/', async function (req, res) {
  res.render('vwPlaylist/Playlist');
});

export default router;
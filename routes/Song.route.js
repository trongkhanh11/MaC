import express from 'express';

const router = express.Router();

router.get('/hotSongs', async function (req, res) {
  res.render('vwSong/hotSongs');
});

router.get('/newSongs', async function (req, res) {
    res.render('vwSong/newSongs');
});

router.get('/Chords', async function (req, res) {
  res.render('vwSong/Chords');
});

export default router;
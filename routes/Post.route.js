import express from 'express';

const router = express.Router();

router.get('/', async function (req, res) {
  res.render('vwPost/Post');
})

router.get('/Chords', async function (req, res) {
  res.render('vwPost/Chords');
})

export default router;
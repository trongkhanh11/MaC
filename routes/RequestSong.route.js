import express from 'express';

const router = express.Router();

router.get('/', async function (req, res) {
  res.render('vwRequestSong/RequestNewSong');
})

export default router;
import express from 'express';

const router = express.Router();

router.get('/', async function (req, res) {
  res.render('vwVideoTutorial/index');
});

router.get('/watchVideo', async function (req, res) {
    res.render('vwVideoTutorial/watchVideo');
});

export default router;
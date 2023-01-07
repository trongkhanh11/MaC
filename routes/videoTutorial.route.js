import express from 'express';
import videoModel from '../services/post_video.model.js';

const router = express.Router();

router.get('/', async function (req, res) {
    const listvid = await videoModel.viewVideo();
    res.render('vwVideoTutorial/index',{
        listvid
    });
});

router.get('/watchVideo', async function (req, res) {
    res.render('vwVideoTutorial/watchVideo');
});

export default router;
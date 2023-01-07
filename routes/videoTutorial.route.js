import express from 'express';
import videoModel from '../services/post_video.model.js';

const router = express.Router();

router.get('/', async function (req, res) {
    const listvid0 = await videoModel.viewVideoBasic();
    const listvid1 = await videoModel.viewVideoNew();
    console.log(listvid1);
    res.render('vwVideoTutorial/index',{
        listvid0,listvid1
    });
});

router.get('/watchVideo', async function (req, res) {
    const list = await commentModel.getComments('Po1');
    res.render('vwVideoTutorial/watchVideo', {
        list
    });
});

export default router;
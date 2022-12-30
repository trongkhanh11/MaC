import express from 'express';
import playlistModel from '../services/playlist.model.js';

const router = express.Router();

router.get('/', async function(req, res) {
    const list =  await playlistModel.findAll();
    console.log(list);
    res.render('vwPlaylist/index',{
    playlist : list
    });
});

export default router;
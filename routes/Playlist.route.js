import express from 'express';
import playlistModel from '../services/playlist.model.js';

const router = express.Router();

router.get('/', async function (req, res) {
    const list = await playlistModel.findAll();
    console.log(list);
    res.render('vwPlaylist/Playlist',{
    playlist_list : list
    });
});

router.get('/inplaylist', async function (req, res) {
    const pl = req.query.pl;
    const playlist = await playlistModel.findOne(pl);
    console.log(playlist);
    res.render('vwPlaylist/inplaylist',{
    playlist
    });
});

router.get('/yourplaylist', async function (req, res) {
  res.render('vwPlaylist/yourplaylist');
});

export default router;
import express from 'express';
import moment from 'moment';
import playlistModel from '../services/playlist.model.js';

const router = express.Router();

router.get('/', async function (req, res) {
    const list = await playlistModel.findAll();
    res.render('vwPlaylist/Playlist',{
    playlist_list : list
    });
});

router.get('/inplaylist', async function (req, res) {
    const pl = req.query.pl;
    const playlist = await playlistModel.findOne(pl);
    res.render('vwPlaylist/inplaylist',{
        playlist
    });
});

router.get('/yourplaylist', async function (req, res) {
    const playlist = await playlistModel.findMyPlaylist(req.session.ID);
    res.render('vwPlaylist/yourplaylist',{
        playlist
    });
});

router.post('/yourplaylist/add', async function (req, res) {
    res.redirect('/Playlist/yourplaylist');
    return playlistModel.createPlaylist(1,req.body.namep)
});

export default router;
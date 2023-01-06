import express from 'express';
import songModel from '../services/song.model.js'

const router = express.Router();

router.get('/hotSongs', async function (req, res) {
  res.render('vwSong/hotSongs');
});

router.get('/newSongs', async function (req, res) {
    res.render('vwSong/newSongs');
});

router.get('/Chords', async function (req, res) {
    const mapost = req.query.mapost;
    const list = await songModel.findChord(mapost);
    console.log(list);
    res.render('vwSong/Chords',{
        list
    });
});

router.get('/young', async function (req, res) {
  res.render('vwSong/young');
});

router.get('/pop', async function (req, res) {
    res.render('vwSong/pop');
});

router.get('/us_uk', async function (req, res) {
  res.render('vwSong/us_uk');
});

router.get('/indie', async function (req, res) {
    res.render('vwSong/indie');
});

router.get('/bolero', async function (req, res) {
    res.render('vwSong/bolero');
});

export default router;
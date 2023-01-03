import express from 'express';
import post_chordModel from '../services/post_chord.model.js';

const router = express.Router();

router.get('/', function (req, res) {
  res.render('vwPost/Post');
})

router.get('/Chords', async function (req, res) {
  res.render('vwPost/Chords');
})

router.post('/add', function (req, res) {
    console.log(req.body);
    res.redirect('../');
    return post_chordModel.createPost(req.body,2);
})

export default router;
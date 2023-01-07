import express from 'express';
import post_chordModel from '../services/post_chord.model.js';

const router = express.Router();

router.get('/', function (req, res) {
  res.render('vwPost/Post');
});

router.post('/add', function (req, res) {
    console.log(req.body);
    res.redirect('/post');
    return post_chordModel.createPost(req.body,req.session.authUser.ID);
});

export default router;
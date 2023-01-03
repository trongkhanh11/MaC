import express from 'express';
import post_chordModel from '../services/post_chord.model.js';

const router = express.Router();

router.get('/', function (req, res) {
  res.render('vwPost/Post');
})

<<<<<<< HEAD
router.get('/Chords', async function (req, res) {
  res.render('vwPost/Chords');
})

=======
router.post('/add', function (req, res) {
    console.log(req.body);
    res.redirect('../');
    return post_chordModel.createPost(req.body,2);
})



>>>>>>> 21f1aff45c17f8bcb32a7430e4a0a3414fc76f3c
export default router;
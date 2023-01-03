import express from 'express';
import post_videoModel from '../services/post_video.model.js';
import multer from 'multer';
import fs from 'fs';

const router = express.Router();

router.get('/', async function (req, res) {
  res.render('vwPost/PostVideo');
})

const storage = multer.diskStorage({  //upload file to 'public/videos'
    destination: (req, file, cb) =>{
            cb(null,'public/videos');
    },
    filename: (req, file, cb) =>{
        console.log(req.body);
        file.originalname = req.body.tenvideo1 + '.mp4';
        const { originalname } = file;
        console.log(file);
        cb(null, originalname);
    }
})
const upload = multer({ storage });

router.post('/add', upload.single('video'),(req, res) =>  {
    //console.log(req.body);
    res.redirect('../');
    return post_videoModel.createPost(req.body,2);
})


export default router
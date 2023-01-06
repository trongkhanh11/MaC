import express from 'express';
import searchModel from '../services/search.model.js';

const router = express.Router();

router.get('/', async function (req, res) {
    const bh = req.query.bh;
    const list = await searchModel.findPost(bh);
    console.log(list);
    res.render('vwSearch/viewBySearch',{
        list
    });
})

export default router;
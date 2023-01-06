import express from 'express';
import chordService from '../services/chord.service.js';

const router = express.Router();

router.get('/', async function (req, res) {
    const list = await chordService.findAll();
    res.render('vwChord/index', {
        POST_CHORD: list,
        empty: list.length === 0
    });
})

export default router;
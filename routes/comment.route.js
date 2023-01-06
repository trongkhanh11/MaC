import express from 'express';
import bcrypt from 'bcryptjs';
import moment from 'moment';

import userService from '../services/user.service.js';
import authWithRequiredPermission from '../middlewares/auth.mdw.js';

const router = express.Router();


router.post('/commnet', async function(req, res){
    const user = userService.findById(req.body.username);
    

    res.render('/videoTutorial/watchVideo',{
        
    })
})
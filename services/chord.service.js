import db from '../utils/db.js';

export default {
    findAll(){
        return db('POST_CHORD')
    },


    findChordByID(postID) {
        return db('POST_CHORD').where('MAPOST', postID);
    }
}


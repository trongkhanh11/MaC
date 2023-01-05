import db from '../utils/db.js'

export default {

    banUser(id){
        return db('User').where('id',id).update({ban: 1})
    },

    delPost(maPost){
        return db(post).where(maPost,'mapost').del();
    }

}
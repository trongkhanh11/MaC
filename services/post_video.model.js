import db from '../utils/db.js'

export default {

    async createPost(entity,id1){
           return await db.raw('call sp_ThemPost( \'' + entity.tenbh1 + '\',\'' + entity.casy1 + '\',\''
           + entity.theloai1 + '\',' + id1 + ',\'video\',\'\',\'' + entity.tenvideo1 + '\',\'' + entity.describe1 + '\')');
    },

    async viewVideoBasic(){
        const proc = await db.raw('call sp_videotype0()');
        const list = db('temp');
        return list
    },

    async viewVideoNew(){
        const proc = await db.raw('call sp_videotype1()');
        const list = db('temp');
        return list
    },

    viewListPost(){
    return db('post');
    },


    delPost(maPost){
        return db('post').where('mapost',mapost).del();
    }

}
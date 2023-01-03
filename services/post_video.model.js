import db from '../utils/db.js'

export default {

    async createPost(entity,id1){
           return await db.raw('call sp_ThemPost( \'' + entity.tenbh1 + '\',\'' + entity.casy1 + '\',\''
           + entity.theloai1 + '\',' + id1 + ',\'video\',\'\',\'' + entity.tenvideo1 + '\',\'' + entity.describe1 + '\')');
    },

    viewPostVideo(maPost){
        return db(
            db.raw('select * from post inner join post_video on post.mapost = post_video.mapost where post.mapost =' + maPost)
        )
    },

    viewListPost(){
    return db('post');
    },


    delPost(maPost){
        return db('post').where('mapost',mapost).del();
    }

}
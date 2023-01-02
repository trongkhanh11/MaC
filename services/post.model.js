import db from '../utils/db.js'

export default {

    async createPost(entity,id1){
         return await db.raw('call sp_ThemPost(?,?,?,?,?,?)',
         entity.tenbh1,entity.casy1,entity.theloai1,id1,entity.loai1,entity.value1);
    },

    viewPostVideo(maPost){
        return db(
            db.raw('select * from post inner join post_video on post.mapost = post_video.mapost where post.mapost =' + maPost)
        )
    },

    viewListPost(){
    return db('post');
    },

    viewPostChord(maPost){
        return db(
            db.raw('select * from post inner join post_chord on post.mapost = post_chord.mapost where post.mapost =' + maPost)
        )
    },

    delPost(maPost){
        return db('post').where('mapost',mapost).del();
    }

}
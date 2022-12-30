//import db from '../utils/db.js'
//
//export default {
//    findPost(text){
//        return db('post').where(tenbaihat,text);
//    },
//
//    getPost(id){
//        return db('post').where(mapost,id);
//    },
//
//    updatePost(entity){
//        const id = entity.mapost;
//        delete entity.mapost;
//        return db('post').where(mapost,id).update(entity);
//    }
//
//    deletePost(id){
//        return db('post').where(mapost,id).del();
//    }
//}
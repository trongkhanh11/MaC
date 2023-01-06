import db from '../utils/db.js'

export default {
   async findPost(bh){
        const proc = await db.raw('call sp_Search(?)',bh);
        const list = db('temp');
        if (list.length===0) return null;
        return list
    }
}
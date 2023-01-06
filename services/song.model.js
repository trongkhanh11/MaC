import db from '../utils/db.js'

export default {
   async findChord(mapost){
        const proc = await db.raw('call sp_Chord(?)',mapost);
        const list = db('temp');
        if (list.length===0) return null;
        return list
    }
}
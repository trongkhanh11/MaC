import db from '../utils/db.js'

export default {
   async findChord(mapost){
        const proc = await db.raw('call sp_Chord(?)',mapost);
        const list = db('temp');
        if (list.length===0) return null;
        return list
    },
    async findMyPlaylist(id){
            const proc = await db.raw('call sp_myPlaylist(?)',id);
            const list = db('temp');
            return list
    },
      async addSong(S_id,P_id){
            const proc = await db.raw("call sp_ThemBH_Playlist(\'" + S_id + "\',\'" + P_id + "\')");
            return proc
        }
}
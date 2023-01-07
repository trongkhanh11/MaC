import db from '../utils/db.js'

export default {
   async findAll(){
        const proc = await db.raw('call sp_All_Playlist()');
        const list = db('temp');
        return list
    },
    async findOne(mapp){
        const proc = await db.raw('call sp_One_Playlist(?)',mapp);
        const list = db('temp');
        return list
    },
    async findMyPlaylist(id){
            const proc = await db.raw('call sp_myPlaylist(?)',id);
            const list = db('temp');
            return list
    },

    async createPlaylist(U_id,name){
        return await db.raw("call sp_TaoPlaylist(" + U_id + ",\'" + name + "\')");
    },
    delPlaylist(P_id){
        const proc = db('Playlist').where('maplaylist',P_id).del();
        return proc
    },

}
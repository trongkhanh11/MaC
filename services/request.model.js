import db from "../utils/db.js";

export default {
  async inseGOM(entity) {
    return await db.raw(
      "call sp_RequestSong(  ' " +
        entity.songName +
        " '  ,  '  " +
        entity.singer +
        " '   ,  ' " +
        entity.genre +
        " '  )"
    );
  },
};

import db from "../utils/db.js";

export default {
  async inseGOM(entity) {
    return await db.raw(
      "call sp_RequestSong(  ' " +
        entity.rqnn_song +
        " '  ,  '  " +
        entity.rqs_author +
        " '   ,  ' " +
        entity.rqs_genre +
        " '  )"
    );
  },
};

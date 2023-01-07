import db from "../utils/db.js";

export default {
  async findAll() {
    const proc = await db.raw("call sp_alluser()");
    const list = db("temp");
    return list;
  },
  async findAllPost() {
    const proc = await db.raw("call sp_allpost()");
    const ara = db("temp");
    return ara;
  },
  async findAllActiveUser() {
    const proc = await db.raw("call sp_allactiveuser()");
    const ara1 = db("temp");
    return ara1;
  },
  async countpost() {
    const proc = await db.raw("call sp_countpost() ");
    const ara2 = db("temp");
    return ara2;
  },
  async countuser() {
    const proc = await db.raw("call sp_countuser() ");
    const ara3 = db("temp");
    return ara3;
  },
  async countadmin() {
    const proc = await db.raw("call sp_countadmin()");
    const ara4 = db("temp");
    return ara4;
  },
  async del(tenbaihat, tencasy) {
    return await db.raw(
      "call sp_deletepost(  N'" + tenbaihat + "'  ,  N'" + tencasy + "'  )"
    );
  },
  async updateban(ban, username) {
    console.log(ban);
    console.log(username);
    return await db.raw(
      "call sp_banuser(  " + ban + "  ,  '" + username + "'  )"
    );
  },
};

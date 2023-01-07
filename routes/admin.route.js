import express from "express";
import adminmodel from "../services/usermanager.model.js";

const router = express.Router();

router.get("/", async function (req, res) {
  const list = await adminmodel.findAll();
  const ara = await adminmodel.findAllPost();
  const acuser = await adminmodel.findAllActiveUser();
  const sumuser = await adminmodel.countuser();
  const sumadmin = await adminmodel.countadmin();
  const sumpost = await adminmodel.countpost();
  res.render("vwAdmin/index", {
    layout: false,
    user: list,
    post: ara,
    acuser: acuser,
    suser: sumuser,
    sadmin: sumadmin,
    spost: sumpost,
  });
});

router.post("/del", async function (req, res) {
  const tenbaihat = req.query.tenbaihat;
  const tencasy = req.query.tencasy;
  const list = await adminmodel.del(tenbaihat, tencasy);
  console.log(list);
});

router.post("/updateban", async function (req, res) {
  const username = req.query.username;
  const list = await adminmodel.updateban(1, username);
  console.log(list);
});
export default router;

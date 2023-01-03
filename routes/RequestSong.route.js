import express from "express";
import requestModel from "./../services/request.model.js";

const router = express.Router();

router.get("/", async function (req, res) {
  res.render("vwRequestSong/RequestNewSong");
});

router.post("/request", async function (req, res) {
  const list = await requestModel.inseGOM(req.body);
  console.log(list);
  res.redirect("../");
  return list;
});

export default router;

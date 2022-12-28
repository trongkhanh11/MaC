import express from "express";
const authController = require("../controllers/auth.js");

const router = express.Router();

router.post('/register_test', authController.register)
router.post('/login_test', authController.login);

// router.get('/logout', authController.logout);

module.exports = router;
var express = require("express");
var router = express.Router();


var listarTimesController = require("../controllers/listarTimesController");


router.get("/mostrarTimes/:id_usuario", function (req, res) {
    listarTimesController.mostrarTimes(req, res);
})


module.exports = router;
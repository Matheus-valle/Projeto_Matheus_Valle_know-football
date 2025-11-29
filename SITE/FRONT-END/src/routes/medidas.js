var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idUsuario", function (req, res) {
    medidaController.buscarUltimasMetricas(req, res);

});



router.get("/MetricasCadastradas/:idUsuario", function (req, res) {
    medidaController.buscarMetricasCadastradas(req, res);
})

router.post("/cadastrar_metrica", function (req, res) {
    medidaController.cadastrar_tiro40y(req, res);
   
})  

router.post("/editar_metrica", function (req, res) {
    medidaController.editar_tiro40y(req, res);
    console.log("passou pelo router do cadasstro")
})  


module.exports = router;

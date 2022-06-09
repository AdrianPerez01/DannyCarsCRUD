var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next){
    res.render('../views/index');
});

router.get('/404', function(req, res, next){
    res.render('../views/404');
});

module.exports = router;

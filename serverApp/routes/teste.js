var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
  res.send(hello());
});
function hello(){
  return 'asd'
}
module.exports = router;
var fs = require('fs');
var riot = require('riot')

var tag = fs.readFileSync("clock.tag", {
  encoding: 'utf8'
})

var js = riot.compile(tag)

console.log(js);
/**
 * Created by mazembo on 2014/05/28.
 */


var dataArray = [ 120, 300, 350, 600];

var canvas = d3.select("#chart")
.append("svg")
.attr("width", 250)
.attr("height", 250)
var bars = canvas.selectAll("rect")
.data(dataArray)
.enter()
.append("rect")
.attr("width", function(d) {return d;})
.attr("height", 30)
.attr("y", function (d, i){return i * 100;})
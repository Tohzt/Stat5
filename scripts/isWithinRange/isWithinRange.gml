/// @func isWithinRange(i, a, b)
/// @param value
/// @param min
/// @param max

var i = argument0;
var a = argument1;
var b = argument2;

var left = min(a,b);
var right = max(a,b);

return (left < i && i < right)
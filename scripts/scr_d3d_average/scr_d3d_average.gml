var _h1 = argument0
var _h2 = argument1
var _h3 = argument2
var _h4 = argument3

var _d = 1;
var _h = _h1;

_h += _h2;_d += 1;

if (_h3 >= 0) { _h += _h3; _d += 1; }
if (_h4 >= 0) { _h += _h4; _d += 1; }

return _h / _d;
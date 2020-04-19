_a = argument0;

var _uv = array_create(2);

//var _u = 0;
//var _v = 1;

_uv[0] = _a[0] + argument1 * (_a[2] - _a[0]);
_uv[1] = _a[1] + argument2 * (_a[3] - _a[1]);;

return _uv;
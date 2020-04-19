var _norm1 = argument0;
var _norm2 = argument1;
var _norm3 = argument2;
var _norm4 = argument3;
var _norm5 = argument4;
var _norm6 = argument5;
var _norm7 = argument6;
var _norm8 = argument7;

//var _x = 0;
//var _y = 1;
//var _z = 2;

var _div = 0;
var _norm = array_create(3);
_norm[0] = 0;
_norm[1] = 0;
_norm[2] = 0;

if (!is_undefined(_norm1)) {
	if (_norm1 != "") {
		_norm[0] += _norm1[0]; 
		_norm[1] += _norm1[1]; 
		_norm[2] += _norm1[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm2)) {
	if (_norm2 != "") {
		_norm[0] += _norm2[0]; 
		_norm[1] += _norm2[1]; 
		_norm[2] += _norm2[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm3)) {
	if (_norm3 != "") {
		_norm[0] += _norm3[0]; 
		_norm[1] += _norm3[1]; 
		_norm[2] += _norm3[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm4)) {
	if (_norm4 != "") {
		_norm[0] += _norm4[0]; 
		_norm[1] += _norm4[1]; 
		_norm[2] += _norm4[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm5)) {
	if (_norm5 != "") {
		_norm[0] += _norm5[0]; 
		_norm[1] += _norm5[1]; 
		_norm[2] += _norm5[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm6)) {
	if (_norm6 != "") {
		_norm[0] += _norm6[0]; 
		_norm[1] += _norm6[1]; 
		_norm[2] += _norm6[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm7)) {
	if (_norm7 != "") {
		_norm[0] += _norm7[0]; 
		_norm[1] += _norm7[1]; 
		_norm[2] += _norm7[2]; 
		_div += 1;
	}
}
if (!is_undefined(_norm8)) {
	if (_norm8 != "") {
		_norm[0] += _norm8[0]; 
		_norm[1] += _norm8[1]; 
		_norm[2] += _norm8[2]; 
		_div += 1;
	}
}

_norm[0] = _norm[0] / _div;
_norm[1] = _norm[1] / _div;
_norm[2] = _norm[2] / _div;

return _norm;
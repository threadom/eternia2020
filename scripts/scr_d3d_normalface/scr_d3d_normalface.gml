var _vect1 = argument0;
var _vect2 = argument1;
var _vect3 = argument2;

//var _x = 0;
//var _y = 1;
//var _z = 2;

var _vect4 = array_create(3);
_vect4[0] = _vect1[0] - _vect2[0];
_vect4[1] = _vect1[1] - _vect2[1];
_vect4[2] = _vect1[2] - _vect2[2];

var _vect5 = array_create(3);
_vect5[0] = _vect2[0] - _vect3[0];
_vect5[1] = _vect2[1] - _vect3[1];
_vect5[2] = _vect2[2] - _vect3[2];

var _norm = array_create(3);
_norm[0] = _vect4[1] * _vect5[2] - _vect4[2] * _vect5[1];
_norm[1] = _vect4[2] * _vect5[0] - _vect4[0] * _vect5[2];
_norm[2] = _vect4[0] * _vect5[1] - _vect4[1] * _vect5[0];

var _max = 255; //abs(max(_norm[0],_norm[1],_norm[2]))
if (_max > 0) {
	_norm[0] = _norm[0] / _max;
	_norm[1] = _norm[1] / _max;
	_norm[2] = _norm[2] / _max;
}
return _norm;
var _vbuff = argument0;
var _vect1 = argument1;
var _vect2 = argument2;
var _vect3 = argument3;
var _norm1 = argument4;
var _norm2 = argument5;
var _norm3 = argument6;
var _uv1 = argument7;
var _uv2 = argument8;
var _uv3 = argument9;

//var _x = 0;
//var _y = 1;
//var _z = 2;

vertex_position_3d(_vbuff, _vect1[0], _vect1[1], _vect1[2]);
vertex_color(_vbuff,scr_d3d_luminosity(_vect1[2]),1);
vertex_texcoord(_vbuff,_uv1[0],_uv1[1]);
vertex_normal(_vbuff,_norm1[0]/2+0.5,_norm1[1]/2+0.5,_norm1[2]/2+0.5);
//vertex_normal(_vbuff,_norm1[0],_norm1[1],_norm1[2]);

vertex_position_3d(_vbuff, _vect2[0], _vect2[1], _vect2[2]);
vertex_color(_vbuff,scr_d3d_luminosity(_vect2[2]),1);
vertex_texcoord(_vbuff,_uv2[0],_uv2[1]);
vertex_normal(_vbuff,_norm2[0]/2+0.5,_norm2[1]/2+0.5,_norm2[2]/2+0.5);
//vertex_normal(_vbuff,_norm2[0],_norm2[1],_norm2[2]);

vertex_position_3d(_vbuff, _vect3[0], _vect3[1], _vect3[2]);
vertex_color(_vbuff,scr_d3d_luminosity(_vect3[2]),1);
vertex_texcoord(_vbuff,_uv3[0],_uv3[1]);
vertex_normal(_vbuff,_norm3[0]/2+0.5,_norm3[1]/2+0.5,_norm3[2]/2+0.5);
//vertex_normal(_vbuff,_norm3[0],_norm3[1],_norm3[2]);
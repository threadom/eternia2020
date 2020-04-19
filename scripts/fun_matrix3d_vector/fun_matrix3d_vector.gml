{
    var m = argument0;
    var v = argument1;
    var res;
    var vo = fun_vector3d_new(0.0,0.0,0.0);
    
    var i;
    for(i = 0; i < 4; i++) {
        res[i] = v[0] * m[0 * 4 + i] + v[1] * m[1 * 4 + i] + v[2] * m[2 * 4 + i] + m[3 * 4 + i];
    }
    
    vo[0] = res[0] / res[3];
    vo[1] = res[1] / res[3];
    vo[2] = res[2] / res[3];
    return vo;
}

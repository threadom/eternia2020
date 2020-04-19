{
    var v = argument0;
    var length = fun_vector3d_length(v);
    var vo = fun_vector3d_new(v[0], v[1], v[2]);
    
    if(length != 0) { 
        vo[0] = v[0] / length;
        vo[1] = v[1] / length;
        vo[2] = v[2] / length;
    }
    return vo;
}

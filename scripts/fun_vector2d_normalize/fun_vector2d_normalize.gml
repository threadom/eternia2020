{
    var v = argument0;
    var length = fun_vector2d_length(v);
    var vo = fun_vector2d_new(v[0], v[1]);
    
    if(length != 0) { 
        vo[0] = v[0] / length;
        vo[1] = v[1] / length;
    }
    return vo;
}

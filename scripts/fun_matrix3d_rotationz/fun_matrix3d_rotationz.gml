{
    var angle = argument0; 
    var mo = fun_matrix3d_identity();
    var cos_angle = cos(angle);
    var sin_angle = sin(angle);
    
    mo[0] = cos_angle;
    mo[1] = sin_angle;
    mo[4] = -sin_angle;
    mo[5] = cos_angle;
    return mo;
}

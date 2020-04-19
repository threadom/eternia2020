{
    var angle = argument0; 
    var mo = fun_matrix3d_identity();
    var cos_angle = cos(angle);
    var sin_angle = sin(angle);
    mo[0] = cos_angle;
    mo[2] = -sin_angle;
    mo[8] = sin_angle;
    mo[10] = cos_angle;
    return mo;
}

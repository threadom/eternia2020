{
    var angle = argument0; 
    var mo = fun_matrix3d_identity();
    var cos_angle = cos(angle);
    var sin_angle = sin(angle);

    mo[5] = cos_angle;
    mo[6] = sin_angle;
    mo[9] = -sin_angle;
    mo[10] = cos_angle;
    return mo;
} 

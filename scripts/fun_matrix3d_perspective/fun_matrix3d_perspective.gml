{
    var fov = argument0;
    var aspect = argument1;
    var near = argument2; 
    var far = argument3;

    var mto = fun_matrix3d_zero();
    var D2R = pi / 180.0;
    var yScale = 1.0 / tan(D2R * fov * 0.5);
    var xScale = yScale / aspect;
    var nearmfar = near - far;
    
    mto[0] = xScale;
    mto[5] = yScale;
    mto[10] = (far + near) / nearmfar;
    mto[11] = -1.0;
    mto[14] = 2 * far * near / nearmfar;

    return mto;
}
{
    var eye = argument0;
    var target = argument1;
    var up = argument2;

    var vz = fun_vector3d_normalize(fun_vector3d_new(eye[0] - target[0], eye[1] - target[1], eye[2] - target[2]));
    var vx = fun_vector3d_normalize(fun_vector3d_crossproduct(up, vz));
    var vy = fun_vector3d_crossproduct(vz, vx);
    var mto = fun_matrix3d_zero();
    mto[0] = vx[0];
    mto[1] = vx[1];
    mto[2] = vx[2];
    mto[3] = 0.0;
    mto[4] = vy[0];
    mto[5] = vy[1];
    mto[6] = vy[2];
    mto[7] = 0.0;
    mto[8] = vz[0];
    mto[9] = vz[1];
    mto[10] = vz[2];
    mto[11] = 0.0;
    mto[12] = eye[0];
    mto[13] = eye[1];
    mto[14] = eye[2];
    mto[15] = 1.0;
    return fun_matrix3d_inverse(mto);
}
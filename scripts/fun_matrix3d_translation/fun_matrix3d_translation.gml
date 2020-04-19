{
    var lx = argument0;
    var ly = argument1;
    var lz = argument2;
    var mo = fun_matrix3d_identity();
    mo[12] = lx;
    mo[13] = ly;
    mo[14] = lz;
    return mo;
}

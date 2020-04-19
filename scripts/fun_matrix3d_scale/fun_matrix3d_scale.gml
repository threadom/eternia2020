{
    var lx = argument0;
    var ly = argument1;
    var lz = argument2;
    var mo = fun_matrix3d_identity();
    mo[0] = lx;
    mo[5] = ly;
    mo[10] = lz;
    return mo;
}

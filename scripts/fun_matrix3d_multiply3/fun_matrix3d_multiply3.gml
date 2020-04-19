{
    var m1 = argument0;
    var m2 = argument1;
    var m3 = argument2;
    var mo1 = fun_matrix3d_identity();
    var mo2 = fun_matrix3d_multiply(mo1, m1);
    var mo3 = fun_matrix3d_multiply(mo2, m2);
    var mo = fun_matrix3d_multiply(mo3, m3);
    return mo;
}

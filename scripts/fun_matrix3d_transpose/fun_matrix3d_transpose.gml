{
    var m = argument0;
    var mo = fun_matrix3d_zero();

    var i = 0;
    var j = 0;
    for(j=0; j < 4; j++) {
        for(i=0; i < 4; i++) {
            mo[i * 4 + j] = m[j * 4 + i];
        }
    }
    return mo;
}

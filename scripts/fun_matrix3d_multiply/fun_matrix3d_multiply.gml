{ 
    var m1 = argument0;
    var m2 = argument1;
    var mo = fun_matrix3d_zero();

    var ly;
    for(ly = 0; ly < 4; ly++) {
     var lx;
        for(lx = 0; lx < 4; lx++) { 
            mo[ly * 4 + lx] = 0.0;
        var n;
            for(n = 0; n < 4; n++) {
                mo[ly * 4 + lx] = mo[ly * 4 + lx] + m1[ly * 4 + n] * m2[n * 4 + lx];
            }
        }
    }
  return mo;
}

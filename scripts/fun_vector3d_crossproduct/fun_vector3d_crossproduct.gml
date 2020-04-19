{    
    var a = argument0;
    var b = argument1;
    var vo = fun_vector3d_new(0, 0, 0);

    vo[0] = a[1] * b[2] - b[1] * a[2]; 
    vo[1] = b[0] * a[2] - a[0] * b[2]; 
    vo[2] = a[0] * b[1] - a[1] * b[0];
   return vo;
}

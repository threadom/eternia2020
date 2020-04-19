{
    var mt = argument0;
    var mto = fun_matrix3d_identity();
    var inv = fun_matrix3d_identity();
    var det = 0.0;
    var i = 0;

    inv[0] = mt[5]  * mt[10] * mt[15] -  
        mt[5]  * mt[11] * mt[14] - 
        mt[9]  * mt[6]  * mt[15] + 
        mt[9]  * mt[7]  * mt[14] +
        mt[13] * mt[6]  * mt[11] - 
        mt[13] * mt[7]  * mt[10];
    
    inv[4] = -mt[4]  * mt[10] * mt[15] + 
        mt[4]  * mt[11] * mt[14] + 
        mt[8]  * mt[6]  * mt[15] - 
        mt[8]  * mt[7]  * mt[14] - 
        mt[12] * mt[6]  * mt[11] + 
        mt[12] * mt[7]  * mt[10];
    
    inv[8] = mt[4]  * mt[9] * mt[15] - 
        mt[4]  * mt[11] * mt[13] - 
        mt[8]  * mt[5] * mt[15] + 
        mt[8]  * mt[7] * mt[13] + 
        mt[12] * mt[5] * mt[11] - 
        mt[12] * mt[7] * mt[9];
    
    inv[12] = -mt[4]  * mt[9] * mt[14] + 
        mt[4]  * mt[10] * mt[13] +
        mt[8]  * mt[5] * mt[14] - 
        mt[8]  * mt[6] * mt[13] - 
        mt[12] * mt[5] * mt[10] + 
        mt[12] * mt[6] * mt[9];
    
    inv[1] = -mt[1]  * mt[10] * mt[15] + 
        mt[1]  * mt[11] * mt[14] + 
        mt[9]  * mt[2] * mt[15] - 
        mt[9]  * mt[3] * mt[14] - 
        mt[13] * mt[2] * mt[11] + 
        mt[13] * mt[3] * mt[10];
    
    inv[5] = mt[0]  * mt[10] * mt[15] - 
        mt[0]  * mt[11] * mt[14] - 
        mt[8]  * mt[2] * mt[15] + 
        mt[8]  * mt[3] * mt[14] + 
        mt[12] * mt[2] * mt[11] - 
        mt[12] * mt[3] * mt[10];
    
    inv[9] = -mt[0]  * mt[9] * mt[15] + 
       mt[0]  * mt[11] * mt[13] + 
       mt[8]  * mt[1] * mt[15] - 
       mt[8]  * mt[3] * mt[13] - 
       mt[12] * mt[1] * mt[11] + 
       mt[12] * mt[3] * mt[9];
    
    inv[13] = mt[0]  * mt[9] * mt[14] - 
       mt[0]  * mt[10] * mt[13] - 
       mt[8]  * mt[1] * mt[14] + 
       mt[8]  * mt[2] * mt[13] + 
       mt[12] * mt[1] * mt[10] - 
       mt[12] * mt[2] * mt[9];
    
    inv[2] = mt[1]  * mt[6] * mt[15] - 
       mt[1]  * mt[7] * mt[14] - 
       mt[5]  * mt[2] * mt[15] + 
       mt[5]  * mt[3] * mt[14] + 
       mt[13] * mt[2] * mt[7] - 
       mt[13] * mt[3] * mt[6];
    
    inv[6] = -mt[0]  * mt[6] * mt[15] + 
       mt[0]  * mt[7] * mt[14] + 
       mt[4]  * mt[2] * mt[15] - 
       mt[4]  * mt[3] * mt[14] - 
       mt[12] * mt[2] * mt[7] + 
       mt[12] * mt[3] * mt[6];
    
    inv[10] = mt[0]  * mt[5] * mt[15] - 
       mt[0]  * mt[7] * mt[13] - 
       mt[4]  * mt[1] * mt[15] + 
       mt[4]  * mt[3] * mt[13] + 
       mt[12] * mt[1] * mt[7] - 
       mt[12] * mt[3] * mt[5];
    
    inv[14] = -mt[0]  * mt[5] * mt[14] + 
       mt[0]  * mt[6] * mt[13] + 
       mt[4]  * mt[1] * mt[14] - 
       mt[4]  * mt[2] * mt[13] - 
       mt[12] * mt[1] * mt[6] + 
       mt[12] * mt[2] * mt[5];
    
    inv[3] = -mt[1] * mt[6] * mt[11] + 
       mt[1] * mt[7] * mt[10] + 
       mt[5] * mt[2] * mt[11] - 
       mt[5] * mt[3] * mt[10] - 
       mt[9] * mt[2] * mt[7] + 
       mt[9] * mt[3] * mt[6];
    
    inv[7] = mt[0] * mt[6] * mt[11] - 
       mt[0] * mt[7] * mt[10] - 
       mt[4] * mt[2] * mt[11] + 
       mt[4] * mt[3] * mt[10] + 
       mt[8] * mt[2] * mt[7] - 
       mt[8] * mt[3] * mt[6];
    
    inv[11] = -mt[0] * mt[5] * mt[11] + 
       mt[0] * mt[7] * mt[9] + 
       mt[4] * mt[1] * mt[11] - 
       mt[4] * mt[3] * mt[9] - 
       mt[8] * mt[1] * mt[7] + 
       mt[8] * mt[3] * mt[5];
    
    inv[15] = mt[0] * mt[5] * mt[10] - 
       mt[0] * mt[6] * mt[9] - 
       mt[4] * mt[1] * mt[10] + 
       mt[4] * mt[2] * mt[9] + 
       mt[8] * mt[1] * mt[6] - 
       mt[8] * mt[2] * mt[5];
    
    det = mt[0] * inv[0] + mt[1] * inv[4] + mt[2] * inv[8] + mt[3] * inv[12];

    if(det == 0) {
        return noone;
    }
    
    det = 1.0 / det;
    
    for(i =0; i<16; i++) {
        mto[i] = inv[i] * det;
    }
    return mto;
}
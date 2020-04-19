var _v_sync = global.window[? "v_sync"];
var _anti_aliasing = global.window[? "anti_aliasing"];

display_reset(_anti_aliasing, _v_sync);
// GPU
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
//gpu_set_zfunc(cmpfunc_less);
gpu_set_alphatestenable(true);
//gpu_set_alphatestref(128);
gpu_set_cullmode(cull_noculling);
gpu_set_texfilter(false);

draw_set_lighting(true);
draw_light_define_ambient(make_color_hsv(0,0,63));

//var s_tex = shader_get_sampler_index(shader_glass, "s_NoiseSampler");
//if gpu_get_texfilter_ext(s_tex) {
//	gpu_set_texfilter_ext(s_tex, false);
//}
//else {
//	gpu_set_texfilter_ext(s_tex, true);
//}
//gpu_set_texrepeat(true);
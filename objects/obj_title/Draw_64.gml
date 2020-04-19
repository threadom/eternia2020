/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
gpu_set_texfilter(true);
draw_set_color(c_black);
draw_set_alpha(0.25);
draw_rectangle(480,0,1440,1080,false);
draw_set_alpha(1);
draw_sprite(sprite_index,image_index,960,200);
gpu_set_texfilter(false);
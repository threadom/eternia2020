for (var i = 0; i < instance_number(obj_d3d_drawable); i += 1) {
   object = instance_find(obj_d3d_drawable, i);
   vertex_submit(object.drawable_vb,pr_trianglestrip,sprite_get_texture(object.sprite_index,object.image_index));
}
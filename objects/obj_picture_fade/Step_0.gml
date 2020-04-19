/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if (current_time - create_time < fade_in) {
	image_alpha = (1 / fade_in) * (current_time - create_time);
}
else {
	if (image_alpha > 0) {
		if (current_time - create_time > fade_in + wait) {
			image_alpha = 1 - ((1 / fade_out) * (current_time - create_time - fade_in - wait));
		}
	}
}
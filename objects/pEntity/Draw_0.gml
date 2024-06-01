if (entityShadow) 
{
	draw_set_color(c_black);
	draw_set_alpha(0.15);
	draw_ellipse(
		floor(x) - 1 - (6 * entityShadowMod),   
		floor(y) - 1 - (3 * entityShadowMod), 
		floor(x) + (6 * entityShadowMod), 
		floor(y) + (3 * entityShadowMod), 
		false
	);
	draw_set_alpha(1.0);
}

if (flash != 0)
{
	shader_set(flashShader);
	shader_set_uniform_f(uFlash, flash);
}
draw_sprite_ext(
	sprite_index,
	image_index,
	floor(x),
	floor(y-z),
	image_xscale,
	image_yscale,
	image_angle,
	image_blend,
	image_alpha
)

if (shader_current() != -1) shader_reset();
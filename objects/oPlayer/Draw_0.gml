//Shadow
draw_set_color(c_black);
draw_set_alpha(0.15);
draw_ellipse(
	floor(x) - 6 - 1,  
	floor(y) - 3 - 1, 
	floor(x) + 6, 
	floor(y) + 3, 
	false
);
draw_set_alpha(1.0);


draw_set_alpha(1.0);

//Hookshot (before player)
if (state == PlayerStateHook) && (image_index != 3) DrawHookChain();

if (invulnerable != 0) && ((invulnerable mod 8 < 2) == 0) && (flash == 0)
{
	//skip draw	
	
}
else
{
	if (flash != 0)
	{
		shader_set(flashShader);
		uFlash = shader_get_uniform(flashShader,"flash");
		shader_set_uniform_f(uFlash,flash);
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
}

//Hookshot (after player)
if (state == PlayerStateHook) && (image_index == 3) DrawHookChain();

function DrawHookChain()
{
	var _originX = floor(x);
	var _originY = floor(y)-7;
	
	var _chains = hook div hookSize;
	var _hookDirX = sign(hookX);
	var _hookDirY = sign(hookY);
	for (var i = 0; i < _chains; i++)
	{
		draw_sprite
		(
			sHookChain,
			0,
			_originX+hookX-(i*hookSize*_hookDirX),
			_originY+hookY-(i*hookSize*_hookDirY)
		);
	}
	draw_sprite(sHookBlade,image_index,_originX+hookX,_originY+hookY);
}
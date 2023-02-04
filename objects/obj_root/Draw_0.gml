/// @description Draw next blinking root

draw_self();

if !isActive or !dirGiven exit

if isVisible
{
	draw_sprite_ext(spr_root, 0, xx, yy, 1, 1, 0, image_blend, 1);
};
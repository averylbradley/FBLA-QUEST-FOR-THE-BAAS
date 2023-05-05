/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x-3;
y = oPlayer.y;
if (image_angle > 90) && (image_angle < 270)
{
	x = oPlayer.x + 5;
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}
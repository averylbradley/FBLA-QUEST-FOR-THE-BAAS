vsp += grv;

//Dont Walk off edges
if (grounded) && (afraidofheights) && (!place_meeting(x + hsp, y + 1, oWall))
{
	hsp = -hsp;
}

//Horizontal Collision
if (place_meeting(x + hsp, y, oWall))
{
	while(!place_meeting(x + sign(hsp), y, oWall))
	{
		x += sign(hsp);
	}
	hsp = -hsp;
}

x += hsp;

//Vertical Collision
if (place_meeting(x, y + vsp, oWall))
{
	while(!place_meeting(x, y + sign(vsp), oWall))
	{
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//Animation

//-Jump
if (!place_meeting(x, y + 1, oWall))
{
	grounded = false;
	sprite_index = sEnemyJ;
	image_speed = 0;
	if (sign(vsp) > 0)
	{
		image_index = 1; 	
	}
	else
	{
		image_index = 0;
	}
}
//-Running
else
{
	grounded = true;
	image_speed = 1; 
	if (hsp == 0)
	{
		sprite_index = sEnemy;	
	}
	else
	{
		sprite_index = sEnemyR;	
	}
}
//-Turning
if (hsp != 0)
{
	image_xscale = sign(hsp) * size;
	image_yscale = size;
}

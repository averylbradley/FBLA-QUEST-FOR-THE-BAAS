#region//Player Input
//Buttons
if (hascontrol)
{
	key_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	key_jump = keyboard_check(ord("W")) || keyboard_check(vk_space) || keyboard_check(vk_up);
}

else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}
#endregion

#region//Calculate Movement
//Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

//Jump
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -7;
	canjump = 0;
}
#endregion

#region //Collide and Move
//Horizontal Collision
if (place_meeting(x + hsp, y, oWall))
{
	while(!place_meeting(x + sign(hsp), y, oWall))
	{
		x += sign(hsp);
	}
	hsp = 0;
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
#endregion

#region //Animation
//-Jump
if (!place_meeting(x, y + 1, oWall))
{
	sprite_index = sPlayerJ;
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
	canjump = 10;
	if (sprite_index = sPlayerJ)
	{
		audio_sound_pitch(snLanding, choose(0.8, 1, 1.2));
		audio_play_sound(snLanding, 2, false);
		repeat(5)
		{
			with(instance_create_layer(x, bbox_bottom, "Bullets", oDust))
			{
				vsp = 0;
			}
		}
	}
	
	image_speed = 1; 
	if (hsp == 0)
	{
		sprite_index = sPlayer;	
	}
	else
	{
		sprite_index = sPlayerR;	
	}
}

//-Turning
if (hsp != 0)
{
	image_xscale = sign(hsp);	
}
#endregion
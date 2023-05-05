gunsprite = layer_sprite_get_id("TitleAssets", "gGun");

//"Bad Ending"
if (global.hasgun == true) && (global.kills > 0)
{
	if (global.kills == 1)
	{
		endtext[0] = "After a few bullets were fired, 1 person was found dead in Park City.";
		endtext[1] = "The civillian tried to fight back.";
	}
	endtext[0] = "After all the bullets were fired, a total of " + string(global.kills) + " innocent people \nwere killed by the park city murderer.";
	endtext[1] = "But some of the Civillians fought back.";
	endtext[2] = "However it was not enough to stop the monster.";
	endtext[3] = "24 hours after the massacre, the murderer was finally arrested.";
	endtext[4] = "He was sentenced to life in prison with no chance of probation.";
	endtext[5] = "You are that monster.";
	endtext[6] = "The end...";
}

//"Good Ending"
else
{
	layer_sprite_destroy(gunsprite);
	endtext[0] = "After [REDACTED] escaped from Park City Asylum, \nHe decided to stroll through Park City Park.";
	endtext[1] = "After a few minutes, the Park City Police Department recieved numerous calls about [REDACTED].";
	endtext[2] = "He was tracked down and thrown back into Park City Asylum and recieved a new, \nmuch more sturdy, chamber.";
	endtext[3] = "You are that insane man.";
	endtext[4] = "The end.";
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";
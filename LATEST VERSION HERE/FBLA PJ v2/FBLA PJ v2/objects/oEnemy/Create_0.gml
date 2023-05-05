if (hasweapon) 
{
	mygun = instance_create_layer(x, y, "Gun", oeGun);
	with (mygun)
	{
		owner = other.id;
	}
}
else
{
	mygun = noone;
}
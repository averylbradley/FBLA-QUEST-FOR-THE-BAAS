/// @desc Moves on

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false;
		Transition(TRANS_MODE.GOTO, other.target);
	}
}
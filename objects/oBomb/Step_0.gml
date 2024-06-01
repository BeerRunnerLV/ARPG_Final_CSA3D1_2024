event_inherited();

if (!global.gamePaused)
{

	bombTick--
	if (bombTick == 0)
	{
		flash = 0.75;
		bombStage++;
		bombTick = bombTickRate[bombStage];

	}

	if (bombTick < 0) 
	{
		y -= z;
		if (lifted)
		{
			with (oPlayer) global.iLifted = noone;
		}
		instance_destroy();
	}
}
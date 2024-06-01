event_inherited();

flashShader = shRedFlash;
uFlash = shader_get_uniform(flashShader,"flash");
bombStage = 0;
bombTickRate = [60,60,60,30,30,30,30,10,10,10,10,10,10,-1];
bombTick = bombTickRate[0];
state = PlayerStateFree;
collisionMap = layer_tilemap_get_id(layer_get_id("Coll"));

image_speed = 0;
hSpeed = 0;
vSpeed = 0;
speedWalk = 2.0;
speedJump = 3.5;
distanceJump = 70;

spriteJump = sPlayerJump;
spriteRun = sPlayerRun;
spriteIdle = sPlayer;
localFrame = 0;

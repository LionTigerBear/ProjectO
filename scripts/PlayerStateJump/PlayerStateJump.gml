// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStateJump(){
	//Movement
	hSpeed = lengthdir_x(speedJump, direction);
	vSpeed = lengthdir_y(speedJump, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedJump);
	var _collided = PlayerCollision();
	
	//update sprite
	sprite_index = spriteJump;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	
	image_index = (CARDINAL_DIR * _totalFrames) + ((1 - (moveDistanceRemaining / distanceJump)) * _totalFrames);
	
	//change state
	if (moveDistanceRemaining <= 0)
	{
		state = PlayerStateFree;
	}

}
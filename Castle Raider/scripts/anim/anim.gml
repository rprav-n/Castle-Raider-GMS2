// @description handle animations
function anim(){
	sprite_index = sprites_array[state];
	image_xscale = facing;
	
	switch (state) {
		case STATES.JUMP:
			if vsp < 0 image_index = 0 else image_index = 1;
		break;
		case STATES.ATTACK:
			if !on_ground() sprite_index = s_player_air_attack;
			else {
				if hsp != 0 sprites_index = s_player_attack_walk;
				else sprites_index = s_player_attack;
			}
		break;
	}
}
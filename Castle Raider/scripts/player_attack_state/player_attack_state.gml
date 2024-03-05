function player_attack_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	if image_index >= image_number - sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps) {
		if hsp != 0 {
			state = STATES.WALK;
		} else {
			state = STATES.IDLE;
		}
	}

	// apply movement
	collision();

	// apply animations
	anim();
}
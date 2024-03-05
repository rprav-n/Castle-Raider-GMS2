function player_jump_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	if on_ground() {
		if hsp != 0 state = STATES.WALK else state = STATES.IDLE;
	}
	if attack {
		state = STATES.ATTACK;
		image_index = 0;
	}


	// apply movement
	collision();

	// apply animations
	anim();
}
function player_walk_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	if hsp == 0 state = STATES.IDLE;
	if attack {
		state = STATES.ATTACK;
		image_index = 0;
	}
	if jump {
		state = STATES.JUMP;
		vsp = jump_spd;
	}
	if block {
		state = STATES.BLOCK;
		hsp = 0;
	}
	
	// apply movement
	collision();

	// apply animations
	anim();
}
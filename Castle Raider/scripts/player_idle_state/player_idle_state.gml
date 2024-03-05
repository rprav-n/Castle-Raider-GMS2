function player_idle_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	if hsp != 0 state = STATES.WALK;
	if attack {
		state = STATES.ATTACK;
		image_index = 0;
	}
	if jump {
		jumped()
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
function player_crouch_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	block_check();
	
	if attack {
		state = STATES.ATTACK;
		image_index = 0;
	}
	if jump {
		jumped()
	}
	

	// apply movement
	collision();

	// apply animations
	anim();
}
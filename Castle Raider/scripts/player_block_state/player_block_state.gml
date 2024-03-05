function player_block_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	if attack {
		state = STATES.ATTACK;
		image_index = 0;
	}
	if block {
		hsp = 0;
	} else {
		if hsp != 0 {
			if !on_ground() state = STATES.JUMP else state = STATES.WALK;
		} else {
			state = STATES.IDLE;
		}
	}
	if jump {
		state = STATES.JUMP;
		vsp = jump_spd;
	}
	
	// apply movement
	collision();

	// apply animations
	anim();
}
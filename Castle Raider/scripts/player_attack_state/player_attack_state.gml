function player_attack_state(){
	// get input
	get_input();

	// calculate movement
	calc_movement();
	
	// check state
	if image_index >= image_number - sprite_get_speed(sprite_index)/game_get_speed(gamespeed_fps) {
		if !on_ground() state = STATES.JUMP else
		if hsp != 0 state = STATES.WALK else state = STATES.IDLE;
	}
	
	if jump {
		jumped();
		state = STATES.ATTACK;
	}

	//enable variable jump
	if vsp < 0 && !jump_held vsp = max(vsp, jump_spd/jump_dampner);

	// apply movement
	collision();

	// apply animations
	anim();
}
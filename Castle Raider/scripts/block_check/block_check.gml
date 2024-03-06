function block_check(){
	if block {
		if down {
			state = STATES.CROUCH_BLOCK;
		} else {
			state = STATES.BLOCK;
		}
		hsp = 0;
	} else {
		// leaving block state
		if down {
			state = STATES.CROUCH;
			hsp = 0;
		} else {
			if hsp != 0 {
			if !on_ground() state = STATES.JUMP else state = STATES.WALK;
			} else {
				state = STATES.IDLE;
			}
		}
	}
}
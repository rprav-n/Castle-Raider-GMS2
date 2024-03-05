// speed
hsp = 0;
vsp = 0;
max_hsp = 2;
walk_spd = 1.5;
hsp_decimal = 0;
vsp_decimal = 0;
jump_spd = -5;
jump_dampner = 2.5;
jumps_initial = 2;
jumps = jumps_initial;

// friction
drag = 0.12;

// facing direction
facing = 1;

// movement
left = 0;
right = 0;
up = 0;
down = 0;
attack = 0;
jump = 0;
block = 0;
jump_held = 0;

// states
enum STATES {
	IDLE,
	WALK,
	JUMP,
	ATTACK,
	BLOCK,
	CROUCH,
	CROUCH_BLOCK
}

state = STATES.IDLE;

// create states array
states_array[STATES.IDLE] = player_idle_state;
states_array[STATES.WALK] = player_walk_state;
states_array[STATES.JUMP] = player_jump_state;
states_array[STATES.ATTACK] = player_attack_state;
states_array[STATES.BLOCK] = player_block_state;
states_array[STATES.CROUCH] = player_crouch_state;
states_array[STATES.CROUCH_BLOCK] = player_crouch_block_state;

// create sprites array
sprites_array[STATES.IDLE] = s_player_idle;
sprites_array[STATES.WALK] = s_player_walk;
sprites_array[STATES.JUMP] = s_player_jump;
sprites_array[STATES.ATTACK] = s_player_attack;
sprites_array[STATES.BLOCK] = s_player_block;
sprites_array[STATES.CROUCH] = s_player_crouch;
sprites_array[STATES.CROUCH_BLOCK] = s_player_crouch_block;
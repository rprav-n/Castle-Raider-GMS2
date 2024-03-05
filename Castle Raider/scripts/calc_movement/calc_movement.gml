/// @description calculate the movement
function calc_movement(){
	var _dir = right - left;
	hsp += _dir * walk_spd;
	vsp += global.grav;

	hsp = lerp(hsp, 0, drag);

	if abs(hsp) <= 0.1 hsp = 0;

	if hsp != 0 facing = sign(hsp);

	hsp = min(abs(hsp), max_hsp) * facing;
}
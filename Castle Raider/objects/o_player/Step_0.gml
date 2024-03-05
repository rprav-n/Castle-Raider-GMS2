/// @description Insert description here

// get input
var _left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));


// calculate movement
var _dir = _right - _left;
hsp += _dir * walk_spd;

hsp = lerp(hsp, 0, drag);

if abs(hsp) <= 0.1 hsp = 0;

if hsp != 0 facing = sign(hsp);

hsp = min(abs(hsp), max_hsp) * facing;

// apply movement
x += hsp;
y += vsp;

// apply animations
if hsp != 0 {
	image_xscale = facing;
	sprite_index = s_player_walk;
} else {
	sprite_index = s_player_idle;
}



















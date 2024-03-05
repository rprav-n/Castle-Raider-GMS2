/// @description get input from user
function get_input(){
	left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	down = keyboard_check(vk_down) || keyboard_check(ord("S"));
	attack = keyboard_check_pressed(vk_shift);
}
/// @description return true if object is on ground
function on_ground(){
	var side = bbox_bottom;
	
	var t1 = tilemap_get_at_pixel(global.map, bbox_left, side + 1);
	var t2 = tilemap_get_at_pixel(global.map, bbox_right, side + 1);
	
	if t1 == SOLID || t2 == SOLID return true;
	else return false;
}

function create_fixed() {
	var obj_width = sprite_get_width(spr_rock_1)/2;
	var obj_height = sprite_get_height(spr_rock_2)/2;

	var column_count = floor(room_width / obj_width);
	var row_count = floor(room_height / obj_height);

	var new_x = floor(random(column_count)) * obj_width + obj_width/2;
	var new_y = floor(random(row_count)) * obj_height + obj_height/2;

	switch (floor(random(3)))
	{
		case 0:
			return instance_create_depth(new_x, new_y, depth, obj_rock_1, { image_xscale: 0.5, image_yscale: 0.5 });
		break;
		case 1:
			return instance_create_depth(new_x, new_y, depth, obj_rock_2, { image_xscale: 0.5, image_yscale: 0.5 });
		break;
		case 2:
			return instance_create_depth(new_x, new_y, depth, obj_rock_3, { image_xscale: 0.5, image_yscale: 0.5 });
		break;
	}
}

function create_temporary() {
	var obj_width = sprite_get_width(spr_croc);
	var obj_height = sprite_get_height(spr_croc);

	var new_x = random(room_width - obj_width) + obj_width/2;
	var new_y = random(room_height - obj_height) + obj_height/2;

	switch (floor(random(2)))
	{
		case 0:
			return instance_create_depth(new_x, new_y, depth, obj_croc);
		break;
		case 1:
			return instance_create_depth(new_x, new_y, depth, obj_hippo);
		break;
	}
}
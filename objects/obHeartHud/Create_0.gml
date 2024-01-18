if variable_global_exists("hearts") == false {
	global.hearts = [
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
		0,
	];
	
	global.heartsSprites = [
		spHeart1,
		spHeart2,
		spHeart3,
		spHeart4,
		spHeart5,
		spHeart6,
		spHeart7,
		spHeart8,
		spHeart9,
	];
}

if room_width <= 1250 {
	instance_destroy();
}

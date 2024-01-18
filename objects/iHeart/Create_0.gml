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

heartIndex_ = 0;

dim_ = true;
alpha_ = 1.0
x_scale_ = 1.0
timers_ = [
	10,
	10,
	20,
	5,
];
nextTimer_ = 1;

alarm_set(0, timers_[0]);
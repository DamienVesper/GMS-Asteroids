if(keyboard_check(vk_left) or keyboard_check(ord("A"))) {
	image_angle += oShip.ShipTurnSpeed;
}
if(keyboard_check(vk_right) or keyboard_check(ord("D"))) {
	image_angle -= oShip.ShipTurnSpeed;
}
if(keyboard_check(vk_space)) {
	motion_add(image_angle, ShipAcc);
	//image_index = 1;
	sprite_index = sShipFlames;
} else {
	//image_index = 0;
	sprite_index = sSpaceship;
}

oShip.speed -= 0.01;
move_wrap(true, true, sprite_width / 2);

speed = clamp(speed, 0, MaxSpeed);
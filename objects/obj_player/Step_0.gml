/// @description Insert description here
// You can write your code in this editor
var onGround=instance_place(x, y+5, obj_floor);

vspeed += 0.4;
if (onGround)
	vspeed = 0;
if (keyboard_check(vk_right))
	hspeed = 5;
else if (keyboard_check(vk_left))
	hspeed = -5;
else
	hspeed = 0;
if (onGround && keyboard_check_pressed(vk_space))
	vspeed = -11;
if (instance_place(x+hspeed, y+vspeed, obj_floor))
{
	vspeed = 0;
	hspeed = 0;
}

if (instance_place(x,y,obj_fish)){
	room_goto(win);
}
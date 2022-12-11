/// @description Insert description here
// You can write your code in this editor

scr_get_input()

if (room == rm_title) {
	if (!audio_is_playing(mus_title)) {
		audio_play_sound(mus_title, 4, 1)
	}
	
	if (keyboard_check_pressed(key_up)) {
		global.rival++
	}
		
	if (keyboard_check_pressed(key_down)) {
		global.rival--
	}

} else if (room == rm_debug) {
	if (!audio_is_playing(mus_abstract)) {
		audio_play_sound(mus_abstract, 4, 1)
	}
	
	if (keyboard_check(ord("Z"))) {
		room_goto(d_roomNum)
	}
	
	if (keyboard_check_pressed(vk_up)) {
		d_roomNum++
	}
	
	if (keyboard_check_pressed(vk_down)) {
		d_roomNum--
	}
	
	
} else {
	audio_stop_sound(mus_title)
	audio_stop_sound(mus_abstract)
}

if (keyboard_check(vk_space)) {
	audio_stop_all()
	room_goto(rm_debug)
	
}

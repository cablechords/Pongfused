/// @description Insert description here
// You can write your code in this editor

scr_get_input()

#region BEHAVIORS
	
	var _move = key_down_hold - key_up_hold 
		
	if (_move != 0) {	
		vspd += _move * accSpd
		vspd = clamp(vspd, -maxSpd , maxSpd )
		curYDir = _move
	} else {
		if (vspd - accSpd > 0) {
			vspd -= accSpd
		} else if (vspd + accSpd < 0) {
			vspd += accSpd
		} else {
			vspd = 0
		}
			
	}
		
	y = clamp(y, 0, room_height)
		

#endregion

y += vspd
/// @description Movimento e colisão
// 

#region Movimentação se modo de jogo for dois jogadores
if global.two_player {
	if keyboard_check(inputs.down) {
		vspeed = speed_racket;
	} else if keyboard_check(inputs.up) {
		vspeed = -speed_racket;
	} else {
		vspeed = 0;
	}
} else { if vspeed > 2 or vspeed > -2 vspeed = global.vspeed_boll; }

#endregion
#region Colisão
if place_meeting(x, y + vspeed, obj_block) {
	vspeed = 0;
}
#endregion

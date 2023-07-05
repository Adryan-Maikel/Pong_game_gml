/// @description Movimentação e colisão
// 
#region Movimentação da raquete
if keyboard_check(inputs.down) {
	vspeed = speed_racket;
} else if keyboard_check(inputs.up) {
	vspeed = -speed_racket;
} else {
	vspeed = 0;
}
#endregion
#region Colisão com as paredes
if place_meeting(x, y + vspeed, obj_block) {
	vspeed = 0;
}
#endregion

/// @description Colisões, gameplay e som
// 
if global.two_player global.vspeed_boll = vspeed;
#region Colisões, aumento de velocidade da bola e aplicando som de boing
if place_meeting(x, y, obj_block) {
	move_bounce_solid(true);
	speed += 0.2;
	audio_pause_sound(snd_boing);
	audio_play_sound(snd_boing, 1, false);
}
if place_meeting(x, y, obj_racket_player) {
	move_bounce_solid(true);
	speed += 0.2;
	audio_pause_sound(snd_boing);
	audio_play_sound(snd_boing, 1, false);
}
if place_meeting(x, y, obj_racket_second_player) {
	move_bounce_solid(true);
	speed += 0.2;
	audio_pause_sound(snd_boing);
	audio_play_sound(snd_boing, 1, false);
}
#endregion

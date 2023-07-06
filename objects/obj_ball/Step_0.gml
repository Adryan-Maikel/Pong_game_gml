/// @description Colisões, gameplay e som
// 
if room == rm_initial exit;
if start_game { speed = 2; start_game = not start_game; }
#region Colisões, aumento de velocidade da bola e aplicando som de boing
if place_meeting(x, y, obj_block) {
	move_bounce_solid(true);
	speed += 0.25;
	audio_pause_sound(snd_boing);
	audio_play_sound(snd_boing, 1, false);
}
if place_meeting(x, y, obj_racket_player) {
	move_bounce_solid(true);
	speed += 0.25;
	audio_pause_sound(snd_boing);
	audio_play_sound(snd_boing, 1, false);
}
if place_meeting(x, y, obj_racket_second_player) {
	move_bounce_solid(true);
	speed += 0.25;
	audio_pause_sound(snd_boing);
	audio_play_sound(snd_boing, 1, false);
}
#endregion
#region Gol
if place_meeting(x, y, obj_goal) {
	var _half_room = room_width / 2;
	if x > _half_room global.qnt_points_player_one++; else if x < _half_room global.qnt_points_player_two++;
  //show_debug_message("Player 1: "+string(global.qnt_points_player_one)+"\n"+"Player 2: "+string(global.qnt_points_player_two));
	x = xstart; y = ystart; speed = 0;
	if not global.two_players { var _racket = obj_racket_second_player; _racket.x = _racket.xstart; _racket.y = _racket.ystart; }
	alarm[0] = game_get_speed(gamespeed_fps) * 2;
}
#endregion

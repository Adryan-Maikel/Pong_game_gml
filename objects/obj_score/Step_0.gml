/// @description Checando vencedor
// 
if global.qnt_points_player_one > global.qnt_max_points - 1 {
	show_message("Player 1 venceu!");
}
if global.qnt_points_player_two > global.qnt_max_points - 1 {
	if global.two_players { show_message("Player 2 venceu!"); exit;} show_message("CPU Venceu!");
}
if global.qnt_points_player_one > global.qnt_max_points - 1 or global.qnt_points_player_two > global.qnt_max_points - 1 {
	global.qnt_points_player_one = 0;
	global.qnt_points_player_two = 0;
	game_restart();
}

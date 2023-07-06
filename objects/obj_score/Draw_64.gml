/// @description Desenhando placar
// 
var _player_two = "CPU: ";
if global.two_players _player_two = "Player 2: ";
draw_set_color(c_white);
draw_text(147, 12, "Player: "+string(global.qnt_points_player_one));
draw_text(500, 12, _player_two + string(global.qnt_points_player_two));

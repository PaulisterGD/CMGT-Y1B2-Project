/// @description Insert description here
// You can write your code in this editor

if (x < 0) {
	//sprite_index = spr_CWHoneyComb;
	path_start(pat_HoneyCombL2R, 4, path_action_stop, false);
} else if (x > 1366) {
	//sprite_index = spr_CCWHoneyComb;
	path_start(pat_HoneyCombR2L, 4, path_action_stop, false);
} else if (y < 0) {
	//sprite_index = spr_CWHoneyComb;
	path_start(pat_HoneyCombT2B, 4, path_action_stop, false);
}
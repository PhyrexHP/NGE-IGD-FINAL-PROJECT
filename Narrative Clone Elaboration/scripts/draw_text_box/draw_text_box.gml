// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_box(text, npcName){
	if npcName.boxActive = 0{
	npcName.boxX = obj_Player.x - 200;
	npcName.boxY = obj_Player.y - 228;
	npcName.boxActive = 1;
	}
	if npcName.boxActive = 1{
		draw_set_color(c_black);
		draw_rectangle(npcName.boxX, npcName.boxY, npcName.boxX+400, npcName.boxY+150, false);
		draw_set_color(c_ltgray);
		draw_rectangle(npcName.boxX+5, npcName.boxY+5, npcName.boxX+395, npcName.boxY+145, true);
		draw_set_color(c_white);
		draw_set_font(fnt_Valken14);
		draw_text_ext(npcName.boxX+10, npcName.boxY+10, text, 15, 380);
	}
	if not (place_meeting(npcName.x,npcName.y, obj_Player)){
		npcName.boxActive = 0;
	}
}
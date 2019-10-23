/// @description Draw the health and detect win/loss conditions
draw_set_color(c_black)

var i = 0
var j = 0
while(i < health){
	//show_debug_message(i)
	//show_debug_message(j)
	if i + 2 <= health{
		i+= 2
		draw_sprite(spr_health_full,0,16 + j++*32,32)
	}else{
		i++
		draw_sprite(spr_health_half,0,16 + j++*32,32)
	}
}

if health < 0{
	draw_text(room_width/2,room_height/2,"You Lose")
}else if instance_number(obj_enemy) == 0 && instance_number(obj_spawn) == 0{
	draw_text(room_width/2,room_height/2,"You Win")
	self.countdown = true
}
/// @description Draw the health

var i = 0
var j = 0
while(i < health){
	show_debug_message(i)
	show_debug_message(j)
	if i + 2 < health{
		i+= 2
		draw_sprite(spr_health_full,0,16 + j++*32,32)
	}else{
		i++
		draw_sprite(spr_health_half,0,16 + j++*32,32)
	}
}

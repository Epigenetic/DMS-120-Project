/// @description Draw the health and detect win/loss conditions
draw_set_color(c_black)

var i = 0
var j = 0
while(i < health){
	//show_debug_message(i)
	//show_debug_message(j)
	if i + 2 <= health{
		i+= 2
		draw_sprite(spr_health_full,0,16 + j++*64,32)
	}else{
		i++
		draw_sprite(spr_health_half,0,16 + j++*64,32)
	}
}
while(i < 10){
	if i % 2 == 1{
		i++
		continue
	}
	draw_sprite(spr_health_empty,0,16 + j++*64,32)
	i+=2
}

if health <= 0{
	//draw_text(room_width/2,room_height/2,"You Lose")
	instance_destroy(obj_enemy)
	instance_create_depth(self.x,self.y,self.depth,obj_teddy_dead)
	var bed = instance_find(obj_bed,0)
	bed.sprite_index = spr_bed_awake
	instance_destroy(self)
	//room_goto(rm_title)
}else if instance_number(obj_enemy) == 0 && instance_number(obj_spawn) == 0{
	audio_play_sound(sn_light_switch,10,false)
	instance_destroy(obj_dark)
	if(room != rm_level3)
		instance_create_depth(self.x,self.y,self.depth,obj_teddy_end)
	instance_create_depth(960,-192,self.depth,obj_night_end)
	instance_destroy(self)
}
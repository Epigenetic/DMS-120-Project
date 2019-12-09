self.walk_speed = 5 //Change this to change walk speed
self.image_xscale = 2
self.image_yscale = 2
self.mask_index = spr_teddy_down
self.toy_flag = false
self.powerup_timer = -1 //Time left on powerup, -1 is no powerup
self.powerup = noone //Current powerup, tracked through sprite indices
self.flicker_timer = -1 
global.freeze_flag = false //freezees enemies when true

// Arrays of sprites to use
up_arr = [spr_teddy_up, spr_dmg_halo_up,spr_speed_halo_up,spr_freeze_halo_up]
up_walk_arr = [spr_teddy_up_walk, spr_dmg_halo_up_walk,spr_speed_halo_up_walk,spr_freeze_halo_up_walk]
down_arr = [spr_teddy_down, spr_dmg_halo_down,spr_speed_halo_down,spr_freeze_halo_down]
down_walk_arr = [spr_teddy_down_walk, spr_dmg_halo_down_walk,spr_speed_halo_down_walk,spr_freeze_halo_down_walk]
right_arr = [spr_teddy_right, spr_dmg_halo_right,spr_speed_halo_right,spr_freeze_halo_right]
right_walk_arr = [spr_teddy_right_walk, spr_dmg_halo_right_walk,spr_speed_halo_right_walk,spr_freeze_halo_right_walk]
left_arr = [spr_teddy_left, spr_dmg_halo_left,spr_speed_halo_left,spr_freeze_halo_left]
left_walk_arr = [spr_teddy_left_walk, spr_dmg_halo_left_walk,spr_speed_halo_left_walk,spr_freeze_halo_left_walk]

self.sprite_array = down_arr //array to draw from

randomize() //randomize seed so rng is different game to game
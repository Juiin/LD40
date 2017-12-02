if(state_new)
{
    scr_spawn_hitbox(x,y,room_speed,spr_enemy_1_hitbox,total_damage,obj_player,true,id,true,-1,0);
}
if (state_timer > room_speed*3)
{
    state_switch("Idle");
}




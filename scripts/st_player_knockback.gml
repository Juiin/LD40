movement_and_collision(knockback_dir,knockback_spd,obj_solid,true);

if(state_new)
{
    if(instance_exists(obj_camera)) obj_camera.screen_shake+=5;
    red = instance_create(x,y,obj_red_flash);
    red.duration = room_speed/4;
}

if(state_timer>=(knockback_duration)) state_switch_previous();

if(state_new)
{
    image_speed = 0.1;
}

if(x_spd != 0 || y_spd != 0)
{
    mov_dir = point_direction(0,0,x_spd,y_spd);
    movement_and_collision(mov_dir, total_move_speed, obj_solid, true);
    
    if(x_spd = 1)
    {
        sprite_index = spr_hero_right;
    }else if(x_spd = -1)
    {
        sprite_index = spr_hero_left;
    }else if(y_spd = 1)
    {
        sprite_index = spr_hero_front;
    }else if(y_spd = -1)
    {
        sprite_index = spr_hero_back;
    }
    
    
    
    
}
/*
else if(left_check)
{
    mp_potential_step_object(mouse_x, mouse_y, total_move_speed, obj_wall)
}
*/
else
{
    mov_dir = -1;
    state_switch("Stand");
}
scr_skills();


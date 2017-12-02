if(x_spd != 0 || y_spd != 0)
{
    mov_dir = point_direction(0,0,x_spd,y_spd);
    movement_and_collision(mov_dir, total_move_speed, obj_solid, true);
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


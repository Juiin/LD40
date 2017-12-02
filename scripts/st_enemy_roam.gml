//roaming
if(state_new)
{
    image_blend=c_green
    dir = irandom_range(0,360);
}
if(state_timer<(room_speed*(random_range(0.5,1))))
{
   movement_and_collision(dir,total_move_speed,obj_solid,true) 
}
else state_switch("Idle");


if(distance_to_object(target) <= detect_radius && !scr_collision_line_ext(x,y,target.x,target.y,obj_solid,true,true,8))
{
    image_blend=c_red
    state_switch("Chase");
}

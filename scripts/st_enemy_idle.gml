if(state_timer>room_speed*3) //after 3 seconds
{
    state_switch("Roam");
}

if(distance_to_object(target) <= detect_radius && !scr_collision_line_ext(x,y,target.x,target.y,obj_solid,true,true,8))
{
    image_blend=c_red
    state_switch("Chase");
}

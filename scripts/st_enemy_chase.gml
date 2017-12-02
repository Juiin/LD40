dir = point_direction(x,y,target.x,target.y);
    movement_and_collision(dir,total_move_speed,obj_solid,true);
    /*
if(!scr_collision_line_ext(x,y,target.x,target.y,obj_solid,false,true,8)) // i have los
{
    
    
    prev_los = true;
    to_wp = 0;
    ds_list_destroy(wp_x);
    ds_list_destroy(wp_y);
    wp_x = ds_list_create();
    wp_y = ds_list_create();
}else if (ds_list_size(wp_x)>5 || distance_to_object(target) > 300) //if we're too far away
{
    prev_los = true;
    to_wp = 0;
    ds_list_destroy(wp_x);
    ds_list_destroy(wp_y);
    wp_x = ds_list_create();
    wp_y = ds_list_create();
    state_switch("Idle");   
}
else if (prev_los) //if we had los last frame
{
    prev_los = false;
    to_wp = 0;
    
    ds_list_add(wp_x,target.xprevious);
    ds_list_add(wp_y,target.yprevious);
    
    dir = point_direction(x,y,wp_x[| to_wp],wp_y[| to_wp]);
    mp_potential_step_object(wp_x[| to_wp], wp_y[| to_wp], total_move_speed, obj_wall)
    
}else
{
    if(collision_line(target.x,target.y,wp_x[| ds_list_size(wp_x)-1],wp_y[| ds_list_size(wp_y)-1],obj_wall,false,true))
    {
        ds_list_add(wp_x,target.xprevious);
        ds_list_add(wp_y,target.yprevious);
    }
    
    if(distance_to_point(wp_x[| to_wp],wp_y[| to_wp]) < 10)
    {
        to_wp++;
    }
    dir = point_direction(x,y,wp_x[| to_wp],wp_y[| to_wp]);
    mp_potential_step_object(wp_x[| to_wp], wp_y[| to_wp], total_move_speed, obj_wall)
    
}

if (distance_to_object(target) < 2)
{
    ds_list_destroy(wp_x);
    ds_list_destroy(wp_y);
    wp_x = ds_list_create();
    wp_y = ds_list_create();
    state_switch("Attack");
}









/*
else state_switch("Idle");



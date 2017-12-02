if(instance_exists(obj_player))
{
    var dest_x,dest_y;
    move_towards_point(mouse_x,mouse_y,0);
    var player_x = obj_player.x;
    var player_y = obj_player.y;
    dest_x = player_x+lengthdir_x(min(64,distance_to_point(mouse_x,mouse_y)),direction);
    dest_y = player_y+lengthdir_y(min(64,distance_to_point(mouse_x,mouse_y)),direction);
    
    
    x += (dest_x-x)/10;
    y += (dest_y-y)/10;

}




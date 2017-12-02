//Inputs
scr_skill_inputs();


//Three abilities here

//Left Click
    if (left_check && !instance_exists(left_cd))
    {
        
        left_cd = scr_cooldown(room_speed/2,4);
        
        var spacing = 90 / (projectiles+1);
        var dir_start = point_direction(x,y,mouse_x,mouse_y)-45 mod 360;
        for(var i = 1; i<=projectiles;i++)
        {
            fb = instance_create(x,y,obj_arrow);
            fb.direction = dir_start+ (spacing*i) mod 360;
            fb.proj_id = proj_id;
            fb.image_angle = dir_start + (spacing*i) mod 360;
            if(scr_chance(pierce_chance)) fb.pierce = true;
        }
        proj_id++;
    }

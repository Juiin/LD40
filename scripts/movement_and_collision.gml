///movement_and_collision(direction, movespeed, wall object, normalized)
//Handles movement and collision for an object set up to use the system.
//Returns true if against a wall without moving.

var _movement_direction=argument[0];
var _move_speed=argument[1];
var _wall=argument[2];
var _normalized=argument[3];
var _wcr=1;
var _against_wall=0;

//Will store the total distance that can be traveled per step.
var _distance_remaining=_move_speed;
var _x_speed,_y_speed;
_x_speed=round(lengthdir_x(1,_movement_direction));
_y_speed=round(lengthdir_y(1,_movement_direction));
if(!_normalized)
{
    _x_speed=round(_x_speed);
    _y_speed=round(_y_speed);
}



//Save our starting place.
var _start_x,_start_y,_hit_wall;
_start_x=x;
_start_y=y;
_hit_wall=false;

//Check to see if we are immediately against a wall.
if(_movement_direction !=-1 && !place_meeting(x+lengthdir_x(_wcr,_movement_direction),y+lengthdir_y(_wcr,_movement_direction),_wall))
{   //We are not against a wall.  Move.
    if(_normalized)
    {
        x+=lengthdir_x(_move_speed,_movement_direction);
        y+=lengthdir_y(_move_speed,_movement_direction);
    }
    else
    {
        x+=_x_speed*_move_speed;
        y+=_y_speed*_move_speed;
    }
    
    //Check if we hit a wall 
    var _temp_x=x;
    var _temp_y=y;
        
    while(place_meeting(x,y,_wall))
    {   //We hit a wall.  Back up until we aren't in a wall.
        x-=lengthdir_x(_wcr,_movement_direction);
        y-=lengthdir_y(_wcr,_movement_direction);
        _hit_wall=true;
    }
    
    if(point_distance(_temp_x,_temp_y,x,y)>_move_speed)
    {
        x=_temp_x;
        y=_temp_y;
    }
    
    //Calculate remaining distance to move based on current location and start location.
    if(_normalized)
        _distance_remaining=_move_speed-point_distance(x,y,_start_x,_start_y);
    else
        _distance_remaining=_move_speed-max(abs(_start_x-x),abs(_start_y-y));
}
else
    _hit_wall=true;

if (_hit_wall && _distance_remaining>0)
{   //Check for ramps!  Now things are starting to get crazy.
    //We need to round for percise checks, but we want to save this value to add back in later.
    var _rounded_off_x = x-round(x);
    var _rounded_off_y = y-round(y);
    
    x=round(x);
    y=round(y);
    
    //Time to look for ramps 45 degrees clockwise and counter-clockwise
    var _angle=45;
    var _ramp=false;
    if(!place_meeting(x+lengthdir_x(_wcr,_movement_direction+_angle),y+lengthdir_y(_wcr,_movement_direction+_angle),_wall))
    {   //Found a ramp counter clockwise!
        _movement_direction+=_angle;
        _ramp=true;
    }
    else if(!place_meeting(x+lengthdir_x(_wcr,_movement_direction-_angle),y+lengthdir_y(_wcr,_movement_direction-_angle),_wall))
    {   //Then clockwise
        _movement_direction-=_angle;
        _ramp=true;
    }
    
    if(_ramp)
    {   //Move along ramp;
        if(_normalized)
        {
            x+=lengthdir_x(_distance_remaining,_movement_direction);
            y+=lengthdir_y(_distance_remaining,_movement_direction);
        }
        else
        {
            _x_speed=lengthdir_x(1,_movement_direction);
            _y_speed=lengthdir_y(1,_movement_direction);
            x+=round(_x_speed)*_distance_remaining;
            y+=round(_y_speed)*_distance_remaining;
        }
        //And now we are adding in the rounded off values to keep speeds while sliding along ramps and walls consistent.
        x+=_rounded_off_x;
        y+=_rounded_off_y;
        
        _hit_wall=false;
        var _temp_x=x;
        var _temp_y=y;
        while(place_meeting(x,y,_wall))
        {   //We hit a wall.  Back up until we aren't in a wall.
            x-=lengthdir_x(_wcr,_movement_direction);
            y-=lengthdir_y(_wcr,_movement_direction);
            _hit_wall=true;
        }
        if(point_distance(_temp_x,_temp_y,x,y)>_move_speed)
        {
            x=_temp_x;
            y=_temp_y;
        }
        
        if(_hit_wall)
        {   //We broke out of the wall, so let's round stuff.
            x=round(x);
            y=round(y);
        }
    }
    else
        _against_wall=true; //You are stuck against a wall.  Do stuff you need to do.
}

//Finally, if we are stuck in a wall, break out.  Hopefully this doesn't happen.
wall_escape(_wall,_wcr);
return(_against_wall);

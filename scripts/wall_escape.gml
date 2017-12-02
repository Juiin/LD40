///wall_escape(colliding object, precision <greater than 0>)
//Moves the calling object in a spiral at the given percision until it
//is no longer in collision.
var _dir=0;
var _start_x=round(x);
var _start_y=round(y);
var _iterations=1;
var _percision=argument[1];
while(place_meeting(x,y,argument[0]))
{   //This loop will find the closest free space by spiraling 
    //outward looking for anywhere free of collision.
    //The deeper lodged in a wall the player is, the longer this will take.
    x=_start_x;
    y=_start_y;
    x+=lengthdir_x(_percision*_iterations,_dir);
    y+=lengthdir_y(_percision*_iterations,_dir);
    
    _dir+=45;
    if(_dir>=360)
    {
        _dir=0;
        _iterations++;
    }
    
    //show_debug_message("stuck in wall, breaking out");
}
return(_iterations);

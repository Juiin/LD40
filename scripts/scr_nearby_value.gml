///scr_nearby_value(grid,x,y,value_to_look_for);
//No Diagionals could be easily changed to include diagionals

var grid = argument0;
var xx = argument1;
var yy = argument2;
var value = argument3;

//No Diagionals
if(grid[# xx+1,yy] == value ||
grid[# xx-1,yy] == value ||
grid[# xx,yy+1] == value ||
grid[# xx,yy-1] == value) return true;
else return false;

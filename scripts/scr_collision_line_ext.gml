///scr_collision_line_ext(x1,y1,x2,y2,obj,prec,notme,diagradius)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var obj = argument4;
var prec = argument5;
var notme = argument6;
var radius = argument7;

if(collision_line(x1,y1,x2,y2,obj,prec,notme) ||
collision_line(x1-radius,y1-radius,x2,y2,obj,prec,notme) ||
collision_line(x1+radius,y1-radius,x2,y2,obj,prec,notme) ||
collision_line(x1-radius,y1+radius,x2,y2,obj,prec,notme) ||
collision_line(x1+radius,y1+radius,x2,y2,obj,prec,notme))
{
    return true;
}
else return false;

//draw_path_all(argument0,argument1,argument2,argument3)
var dx = argument1*(argument3==0)
var dy = argument2*(argument3==0)
var ct = path_get_number(argument0)
if(ct<1) exit;
if(ct==1)
{
    draw_point(dx+path_get_point_x(argument0,0),dy+path_get_point_y(argument0,0));
    exit;
}    
if(path_get_kind(argument0))
{
    var ct = (path_get_precision(argument0)*path_get_precision(argument0)*ct)
    var fr = 1/ct;
    
    var xx1,yy1,xx2,yy2
    var frat = 0;
    repeat(ct)
    {
        xx1 = dx+path_get_x(argument0,frat);
        yy1 = dy+path_get_y(argument0,frat);
        xx2 = dx+path_get_x(argument0,frat+fr);
        yy2 = dy+path_get_y(argument0,frat+fr);
        
        draw_line(xx1,yy1,xx2,yy2)
        frat+=fr
    }
}
else
{
    var i = 0;
    var xx,yy,xx2,yy2;
    repeat(ct-1)
    {
        xx = dx+path_get_point_x(argument0,i);
        yy = dy+path_get_point_y(argument0,i);
        xx2 = dx+path_get_point_x(argument0,i+1);
        yy2 = dy+path_get_point_y(argument0,i+1);
        draw_line(xx,yy,xx2,yy2)
        i+=1;
    }
    if(path_get_closed(argument0))
    {
        xx = dx+path_get_point_x(argument0,i);
        yy = dy+path_get_point_y(argument0,i);
        xx2 = dx+path_get_point_x(argument0,0);
        yy2 = dy+path_get_point_y(argument0,0);
        draw_line(xx,yy,xx2,yy2)
    }
}


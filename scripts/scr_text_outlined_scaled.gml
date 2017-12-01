///scr_text_outlined_scaled(x,y,str,incol,outcol,xscale,yscale)
//do this so we can reset the color later
var c;
c = draw_get_color();
//draw the outline
draw_set_color(argument4);
draw_text_transformed(argument0-1,argument1-1,argument2,argument5,argument6,image_angle);
draw_text_transformed(argument0+1,argument1-1,argument2,argument5,argument6,image_angle);
draw_text_transformed(argument0+1,argument1+1,argument2,argument5,argument6,image_angle);
draw_text_transformed(argument0-1,argument1+1,argument2,argument5,argument6,image_angle);
//draw the inside
draw_set_color(argument3);
draw_text_transformed(argument0,argument1,argument2,argument5,argument6,image_angle);
//reset the drawing color (so there are no side-effects)
draw_set_color(c);

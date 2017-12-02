///scr_damage_other(amount)
var amount = argument0;


hp -= amount;
inst = instance_create(x,y,obj_floaty_damage);
inst.text = string(-amount);
inst.in_col = c_white;
inst.out_col = c_black;

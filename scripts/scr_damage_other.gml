///scr_damage_other(amount)
var amount = argument0;


other.hp -= amount;
inst = instance_create(other.x,other.y,obj_floaty_damage);
inst.text = string(-amount);
inst.out_col = c_black;
inst.in_col = c_white;

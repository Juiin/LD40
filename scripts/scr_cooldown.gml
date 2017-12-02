///scr_cooldown(duration,slot 0-based)
var dur = argument0;
var slot = argument1;

inst = instance_create(0,0,obj_cooldown);
inst.duration = dur;
inst.init_duration = dur;
inst.slot = slot;

return inst;

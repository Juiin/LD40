///scr_apply_knockback(target,dir,spd)
var _tar = argument0;
var _dir = argument1;
var _spd = argument2;

with(_tar)
{
    state_switch("Knockback");
    knockback_dir = _dir;
    knockback_spd = _spd;
}


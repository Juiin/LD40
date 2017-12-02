if(state_new)
{
    instance_destroy();
    inst = instance_create(x,y,obj_enemy_dead);
    inst.sprite_index = sprite_index;
    //instance_change(obj_enemy_melee_1_dead,true);
}


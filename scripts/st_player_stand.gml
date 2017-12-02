if(state_new)
{
    image_speed = 0;
}


//if were pressing move keys
if(x_spd != 0 || y_spd != 0)
{
    state_switch("Walk")
}

scr_skills();

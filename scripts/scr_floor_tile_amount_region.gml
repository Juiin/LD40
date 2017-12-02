var ft = 0;
for(var o=(cx-roomw);o<=(cx+roomw);o++)
{
    for(var p=(cy-roomh);p<=(cy+roomh);p++)
    {
        if(grid[# o,p] == FLOOR)
        {
            ft++;
        }    
    }
}
return ft;
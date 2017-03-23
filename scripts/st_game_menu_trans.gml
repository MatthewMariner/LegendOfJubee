m_speed = 2;

//Transitions
if (menu_open) 
{
    target_midpoint = 232;
    target_state = st_game_in_menu;
}
else
{
    target_midpoint = 56;
    target_state = st_game_in_level;
}

midpoint = move_toward(midpoint, target_midpoint, 2);

if (midpoint == target_midpoint) 
{
    menu_open = !menu_open;
    state_switch(target_state);
}


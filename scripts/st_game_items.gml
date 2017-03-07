/// Items Room

if (state_time > 5 && Input.start)
{
    room_goto(rm_select);
    state_switch(st_game_select);
}

// State Timer - If timer is more than 5 seconds long...

if (state_time > 5 * room_speed)
{
    room_goto(rm_title);
    state_switch(st_game_title);
}

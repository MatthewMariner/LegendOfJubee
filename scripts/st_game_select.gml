///Select Title State

if (state_time > 5 && Input.start)
{
    room_goto(rm_rooms);
    state_switch(st_game_in_level);
}

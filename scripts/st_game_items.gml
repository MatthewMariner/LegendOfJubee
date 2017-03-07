/// Items Room

//Moves room in beginning
if (state_time == 0)
{
    obj_item_screen.y = 233;
}



if (state_time > 5 && Input.start)
{
    room_goto(rm_select);
    state_switch(st_game_select);
}

// State Timer - If music ends ...

if (!audio_is_playing(snd_music_intro)) 
{
    room_goto(rm_title);
    state_switch(st_game_title);
}

// How fast screen scrolls
move_speed = .5;

//With short delay of 150 frames, start moving screen up
if (state_time >= 150 && obj_item_screen.y > 0)
{
    obj_item_screen.y -= move_speed;
}

//As soon as we hit bottom - doesn't move screen up anymore
if (state_time >= 900 && obj_item_screen.y > 232 - obj_item_screen.sprite_height)
{
    obj_item_screen.y -= move_speed;
}

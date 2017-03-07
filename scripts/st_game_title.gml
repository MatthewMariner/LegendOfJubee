///Game Title State

//Adds music to intro
if (!audio_is_playing(snd_music_intro)) audio_play_sound(snd_music_intro,1,true);


if (state_time > 5 && Input.start)
{
    room_goto(rm_select);
    state_switch(st_game_select);
}

// State Timer - If timer is more than 7 seconds long...

if (state_time > 700)
{
    //Fade away
    draw_set_alpha( draw_get_alpha() - .01);
}

if ( draw_get_alpha() <= 0)
{
    room_goto(rm_items);
    state_switch(st_game_items);
}

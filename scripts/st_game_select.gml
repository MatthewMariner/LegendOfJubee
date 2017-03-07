///Select Title State

audio_stop_sound(snd_music_intro);

if (state_time > 5 && Input.start)
{
    room_goto(rm_rooms);
    state_switch(st_game_in_level);
}

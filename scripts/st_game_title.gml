
if (!audio_is_playing(snd_music_intro)) audio_play_sound(snd_music_intro,1,false);

if (state_time > 5 && Input.start) {
    room_goto(rm_select);
    state_switch(st_game_select);
}

if (state_time > 700) {
    draw_set_alpha( draw_get_alpha() - .01);
}

if ( draw_get_alpha() <= 0) {
    draw_set_alpha(1);
    room_goto(rm_items);
    state_switch(st_game_items);
}

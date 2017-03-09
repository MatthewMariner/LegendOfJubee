if (state_time == 0) {
    obj_item_screen.y = 233;
}

if (state_time > 5 && Input.start) {
    room_goto(rm_select);
    state_switch(st_game_select);
}

if (!audio_is_playing(snd_music_intro)) {
    room_goto(rm_title);
    state_switch(st_game_title);
}

move_speed = .5;

if (state_time >= 150 && obj_item_screen.y > 0) {
    obj_item_screen.y -= move_speed;
}

if (state_time >= 900 && obj_item_screen.y > 232 - obj_item_screen.sprite_height) {
    obj_item_screen.y -= move_speed;
}


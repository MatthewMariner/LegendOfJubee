//Instead of using the target_view switching mechanism for changing rooms all on one big room - we are now gunna use canvasas
//Create surface/canvas -> Target surface with paint -> Use surface



//Instantiate HUD
if (!instance_exists(obj_menu))
{
    instance_create(0,0, obj_menu);
}

//Instantiate surface object
if (!surface_exists(global.surface_level))
{
    global.surface_level = surface_create(256, 176);
}

//If not object_room in level already - create it and add current_room === obj_room
if (!instance_exists(obj_room))
{
    current_room = instance_create(0,0, obj_room);
    //get current room
}

//Set surface as object/canvas
current_room.room_surface = global.surface_level;


if (state_time > 5 && Input.start) state_switch(st_game_menu_trans);

var _vx, _vy, _collision;

_vx = argument[0];
_vy = argument[1];
_collision = false;

repeat ( max(abs(_vx), abs(_vy)) ) {
    //Loop through objects passed in
    for (var i=2; i < argument_count; i++) {
        //if we hit something - we do something
        if ( place_meeting(x + sign(_vx), y + sign(_vy), argument[i]) ) {
            _collision = true;
            break;
        }
    }
    
    if (!_collision) {
        x += sign(_vx);
        y += sign(_vy);
    } else {
        break;
    }
}

return _collision;

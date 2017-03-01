//Move Toward (start, end, val)
// Start - where are we now
// End - where do we want to be
// val how many pixels to be where we want to be

var _start, _end, _val;
_start = argument0;
_end = argument1;
_val = argument2;

if (_start < _end) {
    //Returns whatever is smaller
    return min(_start + _val, _end);
} else {
    //Give it where you are - tell it where you wanna be - and how fast you wanna move there
    return max(_start - _val, _end);
}

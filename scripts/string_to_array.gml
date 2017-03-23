/// string_to_array(string, delimiter)
// this function is based on an answer in stackoverflow
// http://stackoverflow.com/questions/24519643/how-to-split-a-string-into-multiple-strings-if-spaces-are-detected-gmstudio

var str_orig = argument[0]; // original string
var delim = argument[1]; // delimiter
var str_array; // the array that will be returned

// make a copy of the original string because we'll delete parts of it to make the array
var str_copy = string_copy(str_orig, 0, string_length(str_orig));

var delim_at = string_pos(" ", str_copy);  // find the first delimiter

var i = 0; // index count for the array
while (delim_at > 0) {  // keep doing this until no more delimiters
    var part = string_delete(str_copy, delim_at, string_length(str_copy));  // get the part we need
    str_copy = string_delete(str_copy, 1, delim_at);  // trim off everything but the part we just grabbed
    delim_at = string_pos(" ", str_copy);  // find the next delimiter
    str_array[i] = part;
    i++;
    
    // if there's still string left, but no delimiter, this is the last string that's left
    if (delim_at == 0 && str_copy != "") {  
        str_array[i] = str_copy;
    }
}

return str_array;


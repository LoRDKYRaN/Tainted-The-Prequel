/// print(variables or strings)

var output_string = "";
var str = "";

for (var i = 0; i < argument_count; i++) {
    str = argument[i];
    if (!is_string(str)) str = string(str);
    output_string += str + " ";
}

show_debug_message(output_string);

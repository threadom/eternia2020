text = argument0;

time = date_time_string(date_current_datetime());
for (var i = 1; i < 56; i++;) {
   global.array_debug[i-1] = global.array_debug[i];
}
global.array_debug[55] = "[" + time + "] " + text;
show_debug_message("[" + time + "] " + text);
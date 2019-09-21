/// list_to_array(list)
var list = argument0;

for (var i=0; i<ds_list_size(list); i++) {
    arr[i] = list[| i];
}

return arr;

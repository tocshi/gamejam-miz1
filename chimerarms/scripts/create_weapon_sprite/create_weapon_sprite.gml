// basically takes the original sprite and centers the offset for display purposes
var sprite = argument0;

var result = sprite_duplicate(sprite);
sprite_set_offset(result,sprite_get_width(sprite)/2,sprite_get_height(sprite)/2);

return result;
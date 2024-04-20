
function fade_to_room(_room, _dur, _color)
{
var _inst = instance_create_depth(0, 0, -1000, o_fade);
with (_inst)
{
	target_room = _room;
	duration = _dur;
	color = _color;
}
}
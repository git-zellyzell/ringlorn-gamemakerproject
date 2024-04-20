/// @description Insert description here
// You can write your code in this editor
xspeed = max(xspeed - 0.03, 0)
yspeed = max(yspeed - 0.03, 0)

if (xspeed <=0) or (yspeed <=0)
{
	chase_player = true;
}
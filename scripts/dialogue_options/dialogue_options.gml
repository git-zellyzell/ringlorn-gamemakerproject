/// @arg responses
function dialogue_options(argument0)
{
	switch(argument0)
	{
		case 0 : break;
		case 1 : new_textbox("you gave response A!" , 0); break;
		case 2 : new_textbox("you gave response B! Any further response?", 1, ["3:yes!", "0 : no."]); break;
		case 3 : new_textbox("thanks for your responses!", 0); break;
		default : break;
	}
}
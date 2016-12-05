/*
	BONYO_fnc_valueCargo
	
	DESCRIPTION:
		This function returns the value of the cargo in standard cargo format
		
	PARAMETERS:
		Array
			An array in standard cargo format
			
	RETURNS
		Value
			The value of the cargo in the array
		
	EXAMPLE
		_contents call BONYO_fnc_valueCargo
*/

private ["_total"];

_total = 0;

{	
	_total = _total + (2 - random 1);
} forEach (_this select 0);

{
	_total = _total + (4 - random 2);
} forEach (_this select 1);

{
	_total = _total + (8 - random 4);
} forEach (_this select 2);

{
	_total = _total + (16 - random 8);
	
	_total = _total + ((_x select 1) call BONYO_fnc_valueCargo);
} forEach (_this select 3);

_total = round _total;

_total;
/*
	BONYO_fnc_debugGroup
	
	DESCRIPTION:
		This function will print an array of the group to make adding groups to the faction list easier
		
	PARAMETERS:
		GROUP
			The group to debug
			
	RETURNS
		Nothing
		
	EXAMPLE
		_grp call BONYO_fnc_debugGroup
*/

private ["_group"];

_group = [];

{
	_group pushback [typeOf _x, rank _x];
} forEach units _this;

(format ["%1", _group]) call BONYO_fnc_print;
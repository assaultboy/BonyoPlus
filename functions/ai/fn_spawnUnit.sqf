/*
	BONOY_fnc_spawnUnit
	
	DESCRIPTION:
		This function spawns the given unit with the given parameters
		
	PARAMETERS:
		String
			The class name of the unit to spawn
		String
			The rank of the unit to spawn
		3DPosition
			3D vector to spawn the unit at
		Group
			The group to spawn the unit in
			
	RETURNS
		Object
			The created unit
		
	EXAMPLE
		 [_rifleman, "PRIVATE", position player, group player] call BONYO_fnc_spawnUnit
*/

private ["_unit"];

_unit = ((_this select 3) createUnit [_this select 0, _this select 2, [], 0, "NONE"]);
[_unit] join (_this select 3);

//Disable VCOM
_unit setVariable ["NOAI",1,false];

//Set our rank
_unit setRank (_this select 1);

_unit

/*
	BONYO_fnc_addStat
	
	DESCRIPTION:
		This function will save the given stat added to the given value on the local client
		
	PARAMETERS:
		StatName
			A string that refers to the current stat being saved
			
		Value
			The value to be added to the stat
			
	RETURNS
		Nothing
		
	EXAMPLE
		["points", 50] call BONYO_fnc_addStat
*/

//Only for clients
if (!hasInterface) exitWith {true};

private ["_stat"];

_stat = ([(_this select 0), 0] call BONYO_fnc_loadStat);

[_this select 0, (_this select 1) + _stat] call BONYO_fnc_saveStat;
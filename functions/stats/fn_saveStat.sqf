/*
	BONYO_fnc_saveStat
	
	DESCRIPTION:
		This function will save the given stat as the given value for the local player
		This function must be called on a client
		
	PARAMETERS:
		StatName
			A string that refers to the current stat being saved
			
		Value
			The value to be staved in the stat
			
	RETURNS
		Nothing
		
	EXAMPLE
		["versions", [0.10, 0.11]] call BONYO_fnc_saveStat
*/

//Only for clients
if (!hasInterface) exitWith {true};

private ["_stats", "_index"];

//Load our stats and retieve our index
_stats = profileNamespace getVariable ["BONYO_stats", []];
_index = (BONYO_statsArray find (_this select 0));

//IF the index is -1 we know that it doesn't exist
if (_index == -1) then {
	(format ["Undefined Stat: %1", _this select 0]) call BONYO_fnc_print;
	
//If we have an index lets set the correct index in our working array and save it
} else {
	_stats set [_index, _this select 1];
	profileNamespace setVariable ["BONYO_stats", _stats];
};
/*
	BONYO_fnc_loadStat
	
	DESCRIPTION:
		This function will load the given stat and return it for the local player
		This function must be called on a client
		
	PARAMETERS:
		StatName
			A string that refers to the current stat being loaded
			
		Default
			The default value to return if no value is found
			
	RETURNS
		Value
			The value of the given stat, defaults to -1
		
	EXAMPLE
		"versions" call BONYO_fnc_loadStat
*/

//Only for clients
if (!hasInterface) exitWith {true};

private ["_stats", "_index", "_return"];

//Load our stats and retrieve our index
_stats = profileNamespace getVariable ["BONYO_stats", []];
_index = (BONYO_statsArray find (_this select 0));

_stats resize (count BONYO_statsArray);

//If the index is -1 we know it doesn't exist
if (_index == -1) then {
	//Let the players know and set our return to -1
	(format ["Undefined Stat: %1", _this select 0]) call BONYO_fnc_print;
	
//If the index exists then retrieve it
} else {
	(format ["_stats: %1     _index: %2,     select: %3",_stats, _index, _stats select _index]) call BONYO_fnc_print;
	_return = (_stats select _index);
};

//Our default case
if (isNil "_return") then {
	_return = (_this select 1);
};

_return;
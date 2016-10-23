/*
	BONYO_fnc_spawnInfGroup
	
	DESCRIPTION:
		This function spawns a random group of infantry at the given point
		This function must be called on the server
		
	PARAMETERS:
		3DPosition
			The location to spawn the AI
			
	RETURNS
		Group
			the group that was spawned
		
	EXAMPLE
		 _pos call BONYO_fnc_spawnInfGroup
*/

//Server only
if (!isServer) exitWith {true};

private ["_groupProto","_grp","_spawnPoint"];

_groupProto = [];
_spawnPoint = _this;
_grp = createGroup EAST;

//Choose a random faction to load
#include "scripts\loadFaction.sqf"

//Choose a random group type to load
#include "scripts\loadGroup.sqf"

//Spawn each member of the group and set them up for bonyo
{
	[_x select 0, _x select 1 ,_spawnPoint, _grp] call BONYO_fnc_spawnUnit;
} forEach _groupProto;


//Add every unit in the group to the curator list
{
	_x addCuratorEditableObjects [units _grp, true];
} forEach allCurators;

_grp;
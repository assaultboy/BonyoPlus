/*
	BONYO_fnc_spawnVicGroup
	
	DESCRIPTION:
		This function spawns a random enemy vehicle at the given location
		This function must be called on the server
		
	PARAMETERS:
		3DPosition
			The location to spawn the AI
			
	RETURNS
		Group
			the group that was spawned
		
	EXAMPLE
		 _pos call BONYO_fnc_spawnVicGroup
*/

//Server only
if (!isServer) exitWith {true};

private ["_groupProto","_grp", "_vic"];

_grp = createGroup EAST;

//This will select a random faction and group
_groupProto = [] call (BONYO_enemyVicFactionList call BIS_fnc_selectRandom);

//Spawn our vehicle
_vic = ((_groupProto select 0) createVehicle _this);

//Face it to the play area
_vic setDir (_vic getRelDir (getMarkerPos "area_base"));

//Spawn our crew

//Driver
if (_groupProto select 1 select 0 != "") then {
	private ["_unit"];
	
	_unit = [_groupProto select 1 select 0, "PRIVATE", _this, _grp] call BONYO_fnc_spawnUnit;
	
	//Force him to drive
	_unit assignAsDriver _vic;
	_unit moveInDriver _vic;
};

//Gunner
if (_groupProto select 1 select 1 != "") then {
	private ["_unit"];
	
	_unit = [_groupProto select 1 select 1, "PRIVATE", _this, _grp] call BONYO_fnc_spawnUnit;
	
	//Force him to gun
	_unit assignAsGunner _vic;
	_unit moveInGunner _vic;
};

//Commander
if (_groupProto select 1 select 2 != "") then {
	private ["_unit"];
	
	_unit = [_groupProto select 1 select 2, "PRIVATE", _this, _grp] call BONYO_fnc_spawnUnit;
	
	//Force him to command
	_unit assignAsCommander _vic;
	_unit moveInCommander _vic;
};

//Flag the vehicle as an AI vehicle
_vic setVariable ["BONYO_clearOnCleanup", true];

//Add every unit in the group to the curator list
{
	_x addCuratorEditableObjects [units _grp, true];
	_x addCuratorEditableObjects [[_vic], true];
} forEach allCurators;

_grp;
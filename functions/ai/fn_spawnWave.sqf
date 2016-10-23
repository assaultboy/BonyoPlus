/*
	BONYO_fnc_spawnWave
	
	DESCRIPTION:
		This function automatically spawns a wave of enemies proportional to the current round and number of players
		This function must be called on the server
		
	PARAMETERS:
		Wave Number (DEFAULT: BONYO_currentRound)
			The wave number to spawn a wave for
			
	RETURNS
		nothing
		
	EXAMPLE
		 10 call BONYO_fnc_spawnWave
*/

"Made it into spawnWave Function" call BONYO_fnc_print;
//Server only
if (!isServer) exitWith {true};

"Made it passed server Check" call BONYO_fnc_print;

//Cleanup the last round
[getMarkerPos "area_base" ,10000] call BONYO_fnc_clearCorpses;

private ["_wave","_playerCount","_maxGroups","_groupCount"];

_wave = _this;

if (isNil "_wave") then {
	_wave = BONYO_currentRound;
};

_playerCount = count allPlayers;

_maxGroups = 3 + (_playerCount * 2);

_maxGroups = round _maxGroups;

_groupCount = (_wave min _maxGroups);


private ["_i"];

//Spawn the number of groups we need
for [{_i=1}, {_i<=_groupCount}, {_i=_i+1}] do {
	private ["_grp"];
	_grp = (getMarkerPos (BONYO_enemyInfSpawnList call BIS_fnc_selectRandom)) call BONYO_fnc_spawnInfGroup;
	_grp addWaypoint [getMarkerPos "respawn", 50];
	
	//Add units to the enemy list so we can check if they're all dead
	{
		BONYO_activeEnemyUnitList pushBack _x;
	} forEach units _grp;
	
	"Spawned Group" call BONYO_fnc_print;
};

//Start the round tracker
[] spawn {
	private ["_loop"];
	
	_loop = true;
	while {_loop} do {
		//Check for win state
		private ["_check"];
		_check = false;
		
		{
			if (alive _X) then {_check = true};
		} forEach BONYO_activeEnemyUnitList;
		
		if (!_check) then {
			_loop = false;
			
			true call BONYO_fnc_endRound;
		};
		//-------------
		//Check for Lose State
		
		_check = true;
		{
			if (!(_x getVariable ["BONYO_isSpectator", false])) then {
				_check = false;
			};
		} forEach allPlayers;
		
		if (_check) then {
			_loop = false;
			
			false call BONYO_fnc_endRound;
		};
		
		
		sleep 1;
	};
};
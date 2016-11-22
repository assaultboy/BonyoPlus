/*
	BONYO_fnc_calculateSupplyDrops
	
	DESCRIPTION:
		This function will calculate which players are eligable for a supply drop and then choose one at random to give a drop
		This function must be called on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_calculateSupplyDrops
*/

//Only on the server
if (!isServer) exitWith {true};

private ["_eligablePlayers"];

_eligablePlayers = [];

{
	private ["_roundCount"];
	_roundCount = (_x getVariable ["BONYO_roundCount", 0]) + 1;
	
	//Check if the player is lucky and has at least 3 round under his belt
	if ((random _roundCount) > 3) then {
		_eligablePlayers pushBack _x;
	};
	
	//Save our new roundCount
	_x setVariable ["BONYO_roundCount", _roundCount];
} forEach allPlayers;

if (count _eligablePlayers > 0) then {
	//Pick our lucky player
	private ["_chosen"];
	_chosen = (_eligablePlayers call BIS_fnc_selectRandom);
	
	//Give him a supply drop
	[position _chosen, _chosen] call BONYO_fnc_spawnSupplyDrop;
};
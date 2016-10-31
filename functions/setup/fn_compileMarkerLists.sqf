/*
	BONYO_fnc_compileMarkerLists
	
	DESCRIPTION:
		This function will compile all the markers into the correct lists automatically
		This function must be executed on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_compileMarkerLists
*/

if (!isServer) exitWith {true};

{
	private ["_markerName"];
	
	_markerName = toArray _x;
	_markerName resize 13;
	
	//If it is an infantry spawn point add it to our list
	if (toString _markerName == "ai_spawn_inf_") then {
		BONYO_enemyInfSpawnList pushBack _x;
	};
	
	//If it is a vehicle spawn point add it to our list
	if (toString _markerName == "ai_spawn_vic_") then {
		BONYO_enemyVicSpawnList pushBack _x;
	};
} forEach allMapMarkers;
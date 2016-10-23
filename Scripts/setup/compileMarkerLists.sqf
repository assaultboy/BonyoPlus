{
	private ["_markerName"];
	
	_markerName = toArray _x;
	_markerName resize 13;
	
	//If it is an infantry spawn point add it to our list
	if (toString _markerName == "ai_spawn_inf_") then {
		BONYO_enemyInfSpawnList pushBack _x;
	};
} forEach allMapMarkers;
/*
	BONYO_fnc_spawnTrackers
	
	DESCRIPTION:
		This function will spawn trackers over enemies to help players find them
		This function must be called on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		 [] call BONYO_fnc_spawnTrackers
*/

//Server only
if (!isServer) exitWith {true};

{
	private ["_flare","_smoke"];
	
	//Spawn Red if the enemy is alive, green if they are dead
	if (alive _x) then {
		_flare = ("F_40mm_Red" createVehicle [0,0,500]);
		_smoke = ("SmokeShellRed" createVehicle [0,0,500]);
	
	} else {
		_flare = ("F_40mm_Green" createVehicle [0,0,500]);
		_smoke = ("SmokeShellGreen" createVehicle [0,0,500]);
	};
	
	_flare attachTo [_x, [0,0,50]];
	_smoke attachTo [_x, [0,0,50]];
	
	[_flare,_smoke] spawn {
		sleep 20;
		
		{
			deleteVehicle _x;
		} forEach _this;
	};
} forEach BONYO_activeEnemyUnitList;
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
	//ONly track living enemies
	if (alive _x) then {
		private ["_flare","_smoke"];
		
		//Spawn our flare and smoke
		_flare = ("F_40mm_Red" createVehicle [0,0,500]);
		_smoke = ("SmokeShellRed" createVehicle [0,0,500]);
		
		//Attach them both to the unit
		_flare attachTo [_x, [0,0,50]];
		_smoke attachTo [_x, [0,0,50]];
		
		//And add a cleanup timer
		[_flare,_smoke] spawn {
			sleep 20;
			
			{
				deleteVehicle _x;
			} forEach _this;
		};
	};
} forEach BONYO_activeEnemyUnitList;
//First thing is first, set the players gear
player call BONYO_fnc_setPlayerSpawnGear;

//Next thing we are going to do is check if the round is still active
if (([] call BONYO_fnc_getMode) == "activeround") then {
	//Since the round is active, we make the player a spectator
	[] call BONYO_fnc_enterSpectator;
	

} else {
	//If we are still joining then enter spectator and wait
	if (([] call BONYO_fnc_getMode) == "none") then {
		[] call BONYO_fnc_enterSpectator;
		
		[] spawn {
			//Wait until we recieve the jip data for the current mode
			waitUntil {
				sleep 0.1;
				(([] call BONYO_fnc_getMode) != "none");
			};
			
			//If we are not in an active round take the player out of spectator
			if (([] call BONYO_fnc_getMode) != "activeround") then {
				[] call BONYO_fnc_exitSpectator;
			};
		};
	};
};
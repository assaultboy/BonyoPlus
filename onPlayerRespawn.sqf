//First thing is first, set the players gear
player call BONYO_fnc_setPlayerSpawnGear;

//Add our put handler so player created piles don't get cleaned up
player addEventHandler ["Put", {
	//If we are putting inside a local weapon pile
	if ((typeOf (_this select 1) == "GroundWeaponHolder") && (local (_this select 1))) then {
		//IF the pile is not already persistant through cleanups
		if ((_this select 1) getVariable ["BONYO_clearOnCleanup", true]) then {
			(_this select 1) setVariable ["BONYO_clearOnCleanup", false, true];
			
			systemChat "DEBUG: Pile is now persistant through cleanup";
		};
	};
}];

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
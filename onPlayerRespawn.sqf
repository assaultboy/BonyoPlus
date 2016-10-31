//Force the player to have the correct loadout

//Request our sync
[] call BONYO_fnc_requestSync;

//First thing is first, set the players gear
player call BONYO_fnc_setPlayerSpawnGear;

//Next thing we are going to do is check if the round is still active
if (BONYO_currentMode == "activeround") then {
	//Since the round is active, we make the player a spectator
	[] call BONYO_fnc_enterSpectator;
};
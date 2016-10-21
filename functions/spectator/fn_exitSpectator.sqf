/*
	BONYO_fnc_exitSpectator
	
	DESCRIPTION:
		This function will force the local player out of spectator mode
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_exitSpectator
*/


//This will force the player out of spectator mode
[false] call ace_spectator_fnc_setSpectator;
[player, false] call ace_spectator_fnc_stageSpectator;
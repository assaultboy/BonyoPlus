/*
	BONYO_fnc_enterSpectator
	
	DESCRIPTION:
		This function will force the local player into spectator mode
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_enterSpectator
*/

//Only execute on CLients
if !hasInterface exitWith {true};

//This will force the player into spectator mode
[true] call ace_spectator_fnc_setSpectator;
[player, true] call ace_spectator_fnc_stageSpectator;

//We will also place the camera at the play area
[0, objNull, -2, (markerPos "area_base") vectorAdd [0,0,50]] call ace_spectator_fnc_setCameraAttributes;
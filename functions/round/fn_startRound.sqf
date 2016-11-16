/*
	BONYO_fnc_startRound
	
	DESCRIPTION:
		This function will start the current round.
		This function should only be called on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_startRound
*/

//Only run on the server
if (!isServer) exitWith {true};

//Now round is active
if (([] call BONYO_fnc_getMode) == "idle") then {
	//Set our Mode
	"activeround" call BONYO_fnc_setMode;
	
	//Spawn our Wave
	([] call BONYO_fnc_getRound) call BONYO_fnc_spawnWave;
	
	//Send our notification
	["WaveStart", [[] call BONYO_fnc_getRound]] remoteExec ["BIS_fnc_showNotification", 0];
	
//A round is already active
} else {
	"Warning! Can only start a round during mode 'idle'" call BONYO_fnc_print;
};
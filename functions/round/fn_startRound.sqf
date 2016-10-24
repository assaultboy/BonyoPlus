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
if (BONYO_currentMode == "idle") then {
	//Set our Mode
	BONYO_currentMode = "activeround";
	
	//Spawn our Wave
	BONYO_currentRound call BONYO_fnc_spawnWave;
	
	//Send our notification
	["WaveStart", [BONYO_currentRound]] remoteExec ["BIS_fnc_showNotification", 0];
	
	//Sync the servers variables with all the clients
	[BONYO_currentRound,
	BONYO_currentMode] remoteExec ["BONYO_fnc_syncVariables", 0];
	
//A round is already active
} else {
	"Warning! Can only start a round during mode 'idle'" call BONYO_fnc_print;
};
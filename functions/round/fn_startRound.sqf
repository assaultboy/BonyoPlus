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

"IN Round Start" call BONYO_fnc_print;

//Now round is active
if (!BONYO_roundActive) then {
	"Round Should Start" call BONYO_fnc_print;
	//Activate the round
	BONYO_roundActive = true;
	
	//Sync the servers variables with all the clients
	[BONYO_currentRound,
	BONYO_roundActive] remoteExec ["BONYO_fnc_syncVariables", 0];
	
	"Before Call" call BONYO_fnc_print;
	BONYO_currentRound call BONYO_fnc_spawnWave;
	"After Call" call BONYO_fnc_print;
	
//A round is already active
} else {
	"Warning! Can not start Round during a round" call BONYO_fnc_print;
};
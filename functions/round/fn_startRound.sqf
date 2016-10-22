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

"Round Should Start Now" call BONYO_fnc_print;

//Now round is active
if (!BONYO_roundActive) then {
	//Activate the round
	BONYO_roundActive = true;
	
	//Sync the servers variables with all the clients
	[BONYO_currentRound,
	BONYO_roundActive] remoteExec ["BONYO_fnc_syncVariables", -2];
	
//A round is already active
} else {
	"Warning! Can not start Round during a round" call BONYO_fnc_print;
};
/*
	BONYO_fnc_endRound
	
	DESCRIPTION:
		This function will end the current round IAW the passed parameter
		This function should only be called from the server
		
	PARAMETERS:
		0 BOOLEAN:
			Successful round. If true the round will be ended as if the round was completed.
			If false it will be ended as if the round was a failure.
			
	RETURNS
		Nothing
		
	EXAMPLE
		true call BONYO_fnc_endRound
*/

//Only run on the server
if (!isServer) exitWith {true};

"MAde it into endRound" call BONYO_fnc_print;

//Now round is active
if (BONYO_roundActive) then {
	//Deactivate the round
	BONYO_roundActive = false;
	
	//Bring everyone out of specator mode
	[] remoteExec ["BONYO_fnc_exitSpectator", 0];
	
	//If the round was successful
	if (_this) then {
		BONYO_currentRound = BONYO_currentRound + 1;
		
		"Round Successful" call BONYO_fnc_print;
	
	//If the round was a failure
	} else {
		//Tell the players
		"The ass band will play a song of farts to celebrate your failure" call BONYO_fnc_print;
		
		//Clear all corpses
		[getMarkerPos "area_base", 10000] call BONYO_fnc_clearCorpses;
		
		//Clear all enemies
		{
			deleteVehicle _x;
		} forEach BONYO_activeEnemyUnitList;
	};
	
	//Sync the servers variables with all the clients
	[BONYO_currentRound,
	BONYO_roundActive] remoteExec ["BONYO_fnc_syncVariables", -2];
	
//A round is already active
} else {
	"Warning! Can only end round during an active round" call BONYO_fnc_print;
};
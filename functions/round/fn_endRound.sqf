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

//Now round is active
if (BONYO_currentMode == "activeround") then {
	//Deactivate the round
	BONYO_currentMode = "idle";
	
	//Bring everyone out of specator mode
	[] remoteExec ["BONYO_fnc_exitSpectator", 0];
	
	//If the round was successful
	if (_this) then {
		["WaveComplete", [BONYO_currentRound, BONYO_roundCompleteRemarks call BIS_fnc_selectRandom]] remoteExec ["BIS_fnc_showNotification", 0];
		
		BONYO_currentRound = BONYO_currentRound + 1;
	
	//If the round was a failure
	} else {
		//Tell the players
		["WaveFail", [BONYO_currentRound, BONYO_roundFailRemarks call BIS_fnc_selectRandom]] remoteExec ["BIS_fnc_showNotification", 0];
		
		//Clear all corpses
		[getMarkerPos "area_base", 10000] call BONYO_fnc_clearCorpses;
		
		//Clear all enemies
		{
			deleteVehicle _x;
		} forEach BONYO_activeEnemyUnitList;
	};
	
	//Sync the servers variables with all the clients
	[BONYO_currentRound,
	BONYO_currentMode] remoteExec ["BONYO_fnc_syncVariables", -2];
	
//A round is already active
} else {
	"Warning! Can only end round during mode 'activeround'" call BONYO_fnc_print;
};
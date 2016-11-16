/*
	BONYO_fnc_getRound
	
	DESCRIPTION:
		This function will return the current round
		This function will return -1 if no current round is found
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Current Round
			An integer representing the current round
		
	EXAMPLE
		[] call BONYO_fnc_getRound
*/

(missionNamespace getVariable ["BONYO_currentRound", -1]);
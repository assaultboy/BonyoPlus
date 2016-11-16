/*
	BONYO_fnc_setRound
	
	DESCRIPTION:
		This function will set the current round
		This function must be called on the server
		
	PARAMETERS:
		Round
			The number to set the round to
			
	RETURNS
		Nothing
		
	EXAMPLE
		10 call BONYO_fnc_setRound
*/


//Only run on the server
if (!isServer) exitWith {true};

missionNamespace setVariable ["BONYO_currentRound", _this, true];
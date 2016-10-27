/*
	BONYO_fnc_syncVariables
	
	DESCRIPTION:
		This function is called from the server on every client.
		This function will update the client variables
		
	PARAMETERS:
		0 NUMBER:
			The current Wave Number
		
		1 STRING:
			The current mode
			
	RETURNS
		nothing
		
	EXAMPLE
		[1,true] remoteExec ["BONYO_fnc_syncVariables", -2];
*/

if (!hasInterface) exitWith {true};

BONYO_currentRound = (_this select 0);
BONYO_currentMode = (_this select 1);
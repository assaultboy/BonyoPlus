/*
	BONYO_fnc_syncVariables
	
	DESCRIPTION:
		This function, when called on the server, forces all clients to sync their variables to the server
		This function, when called on a client, will sync the local variables to the ones given
		
	PARAMETERS (CALLED ON CLIENT):
		0 NUMBER:
			The current Wave Number
		
		1 STRING:
			The current mode
			
	PARAMETERS (CALLED ON SERVER):
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_syncVariables;
*/

//Don't mess around with anything if we are in SP
if (hasInterface && isServer) exitWith {true};

//We are a client
if (hasInterface) then {
	BONYO_currentRound = (_this select 0);
	BONYO_currentMode = (_this select 1);
};

if (isServer) then {
	[BONYO_currentRound, BONYO_currentMode] remoteExec ["BONYO_fnc_syncVariables", -2];
};
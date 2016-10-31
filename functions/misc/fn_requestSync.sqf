/*
	BONYO_fnc_requestSync
	
	DESCRIPTION:
		This function will request a sync from the server
		This function must be called on the Client
			
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_requestSync;
*/

//Only for the clients
if (!hasInterface) exitWith {true};

//Call sync on server
[] remoteExec ["BONYO_fnc_syncVariables", 2];
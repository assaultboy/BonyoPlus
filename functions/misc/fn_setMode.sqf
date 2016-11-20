/*
	BONYO_fnc_setMode
	
	DESCRIPTION:
		This function will set the currentMode to the given variable
		This function must be called on the server
			
	PARAMETERS:
		Mode
			A string that the mode will be set to
			
	RETURNS
		Nothing
		
	EXAMPLE
		"idle" call BONYO_fnc_setMode;
*/

//Only for the Server
if (!isServer) exitWith {true};

missionNamespace setVariable ["BONYO_currentMode", _this, true];
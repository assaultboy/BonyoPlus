/*
	BONYO_fnc_getMode
	
	DESCRIPTION:
		This function will return the current mode
			
	PARAMETERS:
		Nothing
			
	RETURNS
		Mode
			A string of the current mode
		
	EXAMPLE
		[] call BONYO_fnc_getMode;
*/

(missionNamespace getVariable ["BONYO_currentMode", "none"]);
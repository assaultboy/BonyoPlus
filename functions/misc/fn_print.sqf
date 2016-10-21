/*
	BONYO_fnc_print
	
	DESCRIPTION:
		This function prints the given parameter to both the system chat and RPT of every machine
		
	PARAMETERS:
		ANY
			This parameter will be converted to a string automatically
			
	RETURNS
		nothing
		
	EXAMPLE
		"Hello World" call BONYO_fnc_print
*/

//Print to everyones RPT
_this remoteExec ["diag_log", 0, false];

//Print to everyones systemChat
_this remoteExec ["systemChat", 0, false];
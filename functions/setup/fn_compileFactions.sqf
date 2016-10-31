/*
	BONOY_fnc_compileFactions
	
	DESCRIPTION:
		This function will compile all the factions and store them in the correct variables
		This function should only be called on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_compileFactions;
*/

//Server only
if (!isServer) exitWith {true};

//Infantry Faction List
{
	BONYO_enemyInfFactionList pushBack (compile (preprocessFileLineNumbers (format ["functions\ai\factions\%1.sqf", _x])));
} forEach ["NATO","CSAT","RUSSIAN", "ISAS"];
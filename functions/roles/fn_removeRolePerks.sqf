/*
	BONYO_fnc_removeRolePerks
	
	DESCRIPTION:
		This function will remove all the role perks from the comms menu of the local player
		This function must be called on a client
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_removeRolePerks
*/

//Only on the client
if (!hasInterface) exitWith {true};

//Too easy
{
	[player, _x] call BIS_fnc_removeCommMenuItem;
} forEach BONYO_var_commsMenu;
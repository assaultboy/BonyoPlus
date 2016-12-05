/*
	BONYO_fnc_releaseRole
	
	DESCRIPTION:
		This function will release the role of the given player
		This function must be executed on the server
		
	PARAMETERS:
		Player
			The player to release the role of
			
	RETURNS
		Nothing
		
	EXAMPLE
		_ply call BONYO_fnc_releaseRole
*/

//Only on the server
if (!isServer) exitWith {true};

//Make sure the player has a role
if ((_this call BONYO_fnc_getRole) == "") exitWith {true};

private ["_index"];

_index = (BONYO_var_rolesArray find (_this call BONYO_fnc_getRole));

//If the role doesn't exist (Somehow)
if (_index == -1) then {
	(format ["Player Has Undefined Role: %1", _this call BONYO_fnc_getRole]) call BONYO_fnc_print;
	
//The role does exist and the player does have it
} else {
	BONYO_var_currentRoles set [_index, nil];
	publicVariable "BONYO_var_currentRoles";
		
	//Take our Role Perks
	[] remoteExec ["BONYO_fnc_removeRolePerks", _this];
};
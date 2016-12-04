/*
	BONYO_fnc_getRole
	
	DESCRIPTION:
		This function will return the role of the given player
		This function will return "" if the given player has no role
		
	PARAMETERS:
		Player
			The player to get the role of
			
	RETURNS
		Role
			The roleName of the given player
		
	EXAMPLE
		_ply call BONYO_fnc_getRole;
*/

private ["_index", "_return"];

_return = "DEFAULT";

//Get our index if we have one
_index = (BONYO_var_currentRoles find _this);

//If we don't have a role for this player
if (_index == -1) then {
	_return = "";
	
//If we do have a role for this player
} else {
	_return = (BONYO_var_rolesArray select _index);
};

_return;
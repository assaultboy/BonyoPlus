/*
	BONYO_fnc_getRoleFiller
	
	DESCRIPTION:
		This function will return the player filling the given role
		This function will return objNull if the role is not filled
		
	PARAMETERS:
		RoleName
			A string of the role name to check
			
	RETURNS
		Player
			The player filling the role
		
	EXAMPLE
		"masterbuilder" call BONYO_fnc_getRoleFiller;
*/

private ["_index", "_return"];

_return = objNull;

//Get our index
_index = (BONYO_var_rolesArray find _this);

//If the role doesn't exist
if (_index == -1) then {
	(format ["Unknown Role '%1'", _this]) call BONYO_fnc_print;
	
//If the role does exist
} else {
	if (!isNil {BONYO_var_currentRoles select _index}) then {
		_return = (BONYO_var_currentRoles select _index);
	};
};

_return;
/*
	BONYO_fnc_setRole
	
	DESCRIPTION:
		This function will set the given player as the given role if that role is empty
		This function must be called on the server
		
	PARAMETERS:
		Player
			The player to set the role of
			
		RoleName
			A string of the roles name
			
	RETURNS
		Nothing
		
	EXAMPLE
		[_ply, "masterbuilder"] call BONYO_fnc_setRole;
*/

//Only for the server
if (!isServer) exitWith {true};

private ["_index"];

//Get our index
_index = (BONYO_var_rolesArray find (_this select 1));

if (_index == -1) then {
	(format ["Undefined Role: %1", _this select 1]) call BONYO_fnc_print;
	
} else {
	//Make sure no one else is in that role
	if (isNil {BONYO_var_currentRoles select _index}) then {
		//Broadcast our roles array after we update it
		BONYO_var_currentRoles set [_index, _this select 0];
		publicVariable "BONYO_var_currentRoles";
	
	//Our role is already filled, doh
	} else {
		(format ["Role '%1' is already occupied", _this select 1]) call BONYO_fnc_print;
	};
};
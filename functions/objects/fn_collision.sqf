/*
	BONYO_fnc_collision
	
	DESCRIPTION:
		This function will enable/disable collision for the given object globally
		The given object for this function must be local
		
	PARAMETERS:
		Object
			The object to set the collision of
		Enabled
			Boolean to determine whether collision is enabled or not
			
	RETURNS
		Nothing
		
	EXAMPLE
		[_obj, true] call BONYO_fnc_collision
*/

//The given object must be local
if (!local (_this select 0)) exitWith {true};

//Enabling Collision
if (_this select 1) then {
	{
		//Execute enable Collision both locally and on the client of the player
		(_this select 0) enableCollisionWith _x;
		[_this select 0, _x] remoteExec ["enableCollisionWith", _x];
	} forEach allPlayers;

//Disabling Collision
} else {
	{
		//Execute disable Collision both locally and on the client of the player
		(_this select 0) disableCollisionWith _x;
		[_this select 0, _x] remoteExec ["disableCollisionWith", _x];
	} forEach allPlayers;
};
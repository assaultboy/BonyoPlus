/*
	BONYO_fnc_compileRoles
	
	DESCRIPTION:
		This function will compile all the roles into the correct index
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_compileRoles;
*/

/*
Roles Documentation

0 masterbuilder
*/

BONYO_var_rolesArray = ["masterbuilder"];


//So we don't overwrite variables on JIP players
if (isNil "BONYO_var_currentRoles") then {
	BONYO_var_currentRoles = [];
};
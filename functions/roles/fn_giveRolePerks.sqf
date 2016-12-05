/*
	BONYO_fnc_giveRolePerks
	
	DESCRIPTION:
		This function will give the local player the perks for the given role
		This function must be called on a client
		
	PARAMETERS:
		RoleName
			A string of the roles name
			
	RETURNS
		Nothing
		
	EXAMPLE
		"masterbuilder" call BONYO_fnc_giveRolePerks;
*/

//Only for the client
if (!hasInterface) exitWith {true};

switch (_this) do {
	//If we get master builder
	case "masterbuilder": {
		//Add to our comms menu
		BONYO_var_commsMenu pushBack ([player, "modFort", nil, nil, ""] call BIS_fnc_addCommMenuItem);
	};
	
	default {
		(format ["Unknown Role %1", _this]) call BONYO_fnc_print;
	};
};
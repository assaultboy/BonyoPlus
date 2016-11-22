/*
	BONYO_fnc_addSupplyDropAction
	
	DESCRIPTION:
		This function will add the supply drop action to the given object for the local player
		This function must be called on a client
		
	PARAMETERS:
		Object
			The object to add the action to
			
	RETURNS
		nothing
		
	EXAMPLE
		_obj call BONYO_fnc_addSupplyDropAction
*/

//Only on clients
if (!hasInterface) exitWith {true};

_this addAction ["<t color='#FF0000'>Open</t>", {
	[] call BONYO_fnc_spawnSupplyDropReward;
	deleteVehicle (_this select 0);
}, nil, 6, false, true]; 
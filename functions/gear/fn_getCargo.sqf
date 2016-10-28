/*
	BONYO_fnc_getCargo
	
	DESCRIPTION:
		This function will return all cargo in the given holder in standard cargo format
		
	PARAMETERS:
		CONTAINER
			The container to check
			
	RETURNS
		nothing
		
	EXAMPLE
		_box call BONYO_fnc_getCargo;
*/

private ["_cargo"];

_cargo = [itemCargo _this, magazineCargo _this, [], []];

{
	//The actual Weapon
	(_cargo select 2) pushBack ([_x select 0] call BIS_fnc_baseWeapon);
	
	//Suppressor
	if ((_x select 1) != "") then {(_cargo select 0) pushback (_x select 1)};
	
	//Laser
	if ((_x select 2) != "") then {(_cargo select 0) pushback (_x select 2)};
	
	//Optic
	if ((_x select 3) != "") then {(_cargo select 0) pushback (_x select 3)};
	
	//Mag
	if ((_x select 4 select 0) != "") then {(_cargo select 1) pushback (_x select 4 select 0)};
	
	//IF we have a grenade launcher
	if ((typeName (_x select 5)) == "ARRAY") then {
		
		//Grenade Mag
		if ((_x select 5 select 0) != "") then {(_cargo select 1) pushback (_x select 5 select 0)};
		
	//We don't have a grenade launcher
	} else {
		//Bipod
		if ((_x select 5) != "") then {(_cargo select 1) pushback (_x select 5)};
	};
} forEach (weaponsItemsCargo _this);


{
	(_cargo select 3) append [[typeOf _x, _x call BONYO_fnc_getCargo]];
} forEach everyBackpack _this;

_cargo;
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

private ["_cargo", "_backpackList"];

_backpackList = [];

//[Items, Mags, Weapons, Backpacks]
_cargo = [itemCargo _this, magazineCargo _this, [], []];

//Take care of weapons first because fuck it
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
		if ((_x select 5) != "") then {(_cargo select 0) pushback (_x select 5)};
	};
} forEach (weaponsItemsCargo _this);

//Get backpacks next and build a list of classnames to draw from later when we search for vests and uniforms
{
	(_cargo select 3) append [[typeOf _x, _x call BONYO_fnc_getCargo]];
	
	_backpackList pushback (typeOf _x);
} forEach everyBackpack _this;

//Now get vests and uniforms, throwing out backpacks
{
	//Exclude any backpacks we already indexed
	if (!((_x select 0) in _backpackList)) then {
		private ["_extraCargo"];
		
		_extraCargo =  (_x select 1) call BONYO_fnc_getCargo;
		
		//Items
		(_cargo select 0) append (_extraCargo select 0);
		//Mags
		(_cargo select 1) append (_extraCargo select 1);
		//WEapons
		(_cargo select 2) append (_extraCargo select 2);
		//Backpacks
		(_cargo select 3) append (_extraCargo select 3);
	};
} forEach everyContainer _this;

_cargo;
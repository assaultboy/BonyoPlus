/*
	BONYO_fnc_setCargo
	
	DESCRIPTION:
		This function will set the cargo of the given object to that of the given cargo array in standard format
		
	PARAMETERS:
		Object
			Box to load the locker into
		
		Cargo
			Array in standard format
			
	RETURNS
		nothing
		
	EXAMPLE
		[_box, _cargoArray] call BONYO_fnc_setCargo
*/

private ["_box", "_contents", "_bagStore"];

_box = (_this select 0);
_contents = (_this select 1);

_bagStore = [];

clearItemCargo _box;
clearWeaponCargo _box;
clearMagazineCargo _box;
clearBackpackCargo _box;

{
	_box addItemCargoGlobal [_x, 1];
} forEach (_contents select 0);

{
	_box addMagazineCargoGlobal [_x, 1];
} forEach (_contents select 1);

{
	_box addWeaponCargoGlobal [_x, 1];
} forEach (_contents select 2);

{
	_box addBackpackCargoGlobal [_x select 0, 1];
	
	_bagStore pushBack (_x select 0);
} forEach (_contents select 3);

{
	private ["_index"];
	
	clearItemCargo _x;
	clearWeaponCargo _x;
	clearMagazineCargo _x;
	clearBackpackCargo _x;
	
	_index = _bagStore find (typeOf _x);
	
	if (_index != -1) then {
		[_x, ((_contents select 3) select _index) select 1] call BONYO_fnc_setCargo;
		
	} else {
		"Bag found not in _bagStore for BONYO_fnc_setCargo" call BONYO_fnc_print;
	};
	
	_bagStore set [_index, ""];
	
} forEach (everyBackpack _box);
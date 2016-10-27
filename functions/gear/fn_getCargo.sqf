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

_cargo = [itemCargo _this, magazineCargo _this, weaponCargo _this, []];

{
	(_cargo select 3) append [[typeOf _x, _x call BONYO_fnc_getCargo]];
} forEach everyBackpack _this;

_cargo;
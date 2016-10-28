/*
	BONYO_fnc_sellCargo
	
	DESCRIPTION:
		This function sells the cargo of the given container and adds it to the local players balance
		
	PARAMETERS:
		Object
			The container to sell the cargo of
			
	RETURNS
		nothing
		
	EXAMPLE
		_box call BONYO_fnc_sellCargo
*/

private ["_total"];

_total = 0;

{	
	_total = _total + (_x * (2 - random 1));
} forEach ((getItemCargo _this) select 1);

{	
	_total = _total + (_x * (4 - random 2));
} forEach ((getMagazineCargo _this) select 1);

{	
	_total = _total + (_x * (8 - random 4));
} forEach ((getWeaponCargo _this) select 1);

{	
	_total = _total + (_x * (16 - random 8));
} forEach ((getBackpackCargo _this) select 1);

_total = round _total;

[_total, false] call BONYO_fnc_giveMoney;

hint format ["Sold Items for $%1",_total];
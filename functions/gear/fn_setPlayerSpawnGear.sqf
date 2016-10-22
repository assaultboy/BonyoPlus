/*
	BONYO_fnc_setPlayerSpawnGear
	
	DESCRIPTION:
		This function sets the players gear to their spawn gear
		This function must be executed on the machine that unit is local to
		
	PARAMETERS:
		unit (DEFAULT : player)
			The unit whose gear will be set
			
	RETURNS
		nothing
		
	EXAMPLE
		_unit call BONYO_fnc_setPlayerSpawnGear
*/

private ["_unit"];

_unit = _this;

//If we are given a nil value then default to player
if (isNil "_unit") then {
	_unit = player;
};

//_unit has to be executed locally so if the unit is not local then print the problem and exit the script
if (!local _unit) then {
	(format ["Attempted to set gear on non-local player: %1", _unit]) call BONYO_fnc_print;
	if (true) exitWith {};
};

//Clear the unit
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

//Add the uniform and equipment
_unit forceAddUniform "U_B_CombatUniform_NKPBlack";
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_epinephrine";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_morphine";};
_unit addMagazines ["30Rnd_9x21_Mag",4];

//_unit addHeadgear "H_Beret_02";

//Add our Weapon
_unit addWeapon "SMG_02_F";

//Add our items
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";

//This will skip the draw weapon animation
_unit switchMove "";
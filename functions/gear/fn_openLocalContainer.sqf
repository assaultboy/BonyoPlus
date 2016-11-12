/*
	BONYO_fnc_openLocalContainer
	
	DESCRIPTION:
		This function will create and open a local container for the local player
		This function must be called on a client
		
	PARAMETERS:
		Nothing
			
	RETURNS
		CONTAINER
			The local container
		
	EXAMPLE
		[] call BONYO_fnc_openLocalContainer;
*/

if (!hasInterface) exitWith {true};

private ["_box"];

//Create the box and hide it
_box = "B_Truck_01_box_F" createVehicleLocal [0,0,5000];
_box allowDamage false;
_box hideObject true;

//Attach it to the player
_box attachTo [player, [0,0,0]];

clearItemCargo _box;
clearWeaponCargo _box;
clearMagazineCargo _box;
clearBackpackCargo _box;

_box setVariable ["BONYO_clearOnCleanup", false];

//Force the player to open it
player action ["gear", _box];

//Return our box
_box;
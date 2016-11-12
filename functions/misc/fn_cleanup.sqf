/*
	BONYO_fnc_cleanup
	
	DESCRIPTION:
		This function will clear the corpses and gear piles in a given radius about a given point
		This function will also clear any object with the BONYO_clearOnCleanup flag set
		This function must be called on the server
		
	PARAMETERS:
		0 POSITION:
			The position to clear
		1 RADIUS:
			The Radius of the circle to check
			
	RETURNS
		nothing
		
	EXAMPLE
		[_pos, 500] call BONYO_fnc_cleanup;
*/

//Server only
if !isServer exitWith {true};

//Cleanup the last round
{
	//If it's dead delete it
	if ((!alive _x) || (_x getVariable ["BONYO_clearOnCleanup", false])) then {
		//Just in case it is a vehicle
		{deleteVehicle _x} forEach crew _x;
		
		deleteVehicle _x;
	} else {
		//If it's a weapon pile that isn't in the donation area, delete it
		if (_x isKindof "WeaponHolder") then {// || _x isKindof "WeaponHolderSimulated") then { Trying some sheet here
			if (!(_x getVariable ["BONYO_clearOnCleanup",true])) then {
				deleteVehicle _x;
			};
		};
	};
} forEach ((_this select 0) nearObjects (_this select 1));
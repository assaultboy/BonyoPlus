/*
	BONYO_fnc_clearCorpses
	
	DESCRIPTION:
		This function will clear the corpses and gear piles in a given radius about a given point
		This function must be called on the server
		
	PARAMETERS:
		0 POSITION:
			The position to clear
		1 RADIUS:
			The Radius of the circle to check
			
	RETURNS
		nothing
		
	EXAMPLE
		[_pos, 500] call BONYO_fnc_clearCorpses;
*/

//Server only
if !isServer exitWith {true};

//Cleanup the last round
{
	//If it's dead delete it
	if (!alive _x) then {
		deleteVehicle _x;
	} else {
		//If it's a weapon pile that isn't in the donation area, delete it
		if (_x isKindof "WeaponHolderSimulated" || _x isKindof "WeaponHolder") then {
			if (!(_x getVariable ["bonyo_donationAction",false])) then {
				deleteVehicle _x;
			};
		};
	};
} forEach ((_this select 0) nearObjects (_this select 1));
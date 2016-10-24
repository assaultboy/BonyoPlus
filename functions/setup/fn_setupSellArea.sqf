/*
	BONYO_fnc_setupSellArea
	
	DESCRIPTION:
		This function will initiate the check loop for the sell area
		
	PARAMETERS:
		OBJECT:
			The sell area object
			
	RETURNS
		nothing
		
	EXAMPLE
		_obj call BONYO_fnc_setupSellArea
*/

//Server only
if (!isServer) exitWith {true};

_this spawn {
	//Dat never ending loop
	while {true} do {
		{
			if (!(_x getVariable ["BONYO_sellPileAction", false])) then {
				[_x] remoteExec ["BONYO_fnc_addSellPileAction", _x];
			};
		} forEach ((getPos _this) nearObjects ["GroundWeaponHolder", 4]);
		sleep 1;
	};
};
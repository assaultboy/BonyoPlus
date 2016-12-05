/*
	BONYO_fnc_modFort
	
	DESCRIPTION:
		This function will attempt to execute the local players master builder perk of modifying already placed fortifications
		This function must be run on the client
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_modFort
*/

//Only run on the client
if (!hasInterface) exitWith {true};

//The player must be a master builder
if ((player call BONYO_fnc_getRole) != "masterbuilder") exitWith {true};

//It must be a saved fortification
if (cursorTarget getVariable ["BONYO_saveFortification", false]) then {
	//Make sure it's not already moveable
	if (isNull (cursorTarget getVariable ["BONYO_moveableOwner", objNull])) then {
		//We have to take ownership so that the makeMoveable function works
		[cursorTarget, owner player] remoteExec ["setOwner", 2];
		
		//Wait for the locality of the object to change
		cursorTarget spawn {
			waitUntil {local _this};
			
			//Tell the master builder
			hint "Object made Moveable";
			
			//Make the object moveable
			_this call BONYO_fnc_makeMoveable;
		};
		
	} else {
		hint "Object is already moveable by someone else";
	};
};
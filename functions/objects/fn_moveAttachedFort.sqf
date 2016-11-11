/*
	BONYO_fnc_moveAttachedFort
	
	DESCRIPTION:
		This function will move the currently attached fortification the given amount in the Z axis
		This function must be called on a client
		This function may only be called when there is a fortification being moved
		
	PARAMETERS:
		Distance
			The distance to move in the Z axis
			
	RETURNS
		Nothing
		
	EXAMPLE
		1 call BONYO_fnc_moveAttachedFort
*/

//Only run on the client
if (!hasInterface) exitWith {true};

//Only run if we have a fortification
if (isNull ((player getVariable ["BONYO_currentFortData", [objNull, [0,0,0]]]) select 0)) exitWith {true};

private ["_data" ,"_object", "_offset", "_newOffset"];

//Pull our data
_data = (player getVariable ["BONYO_currentFortData", [objNull, [0,0,0]]]);

//Sort it so it is cleaner to work with
_object = (_data select 0);
_offset = (_data select 1);

//Add our given distance to the current offset to get the new offset
_newOffset = [_offset select 0, _offset select 1, (_offset select 2) + _this];

//Save our data and attach our object again at the new offset
player setVariable ["BONYO_currentFortData", [_object, _newOffset]];

_object attachTo [player, _newOffset];
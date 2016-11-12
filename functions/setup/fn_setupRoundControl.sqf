/*
	BONYO_fnc_setupRoundControl
	
	DESCRIPTION:
		This function will add various control actions to the given object
		
	PARAMETERS:
		OBJECT:
			The round control object
			
	RETURNS
		nothing
		
	EXAMPLE
		_obj call BONYO_fnc_setupRoundControl
*/

_this allowDamage false;

//Add our Wave start option
_this addAction ["Start Wave", {
	//Check if every player is within the marker
	private ["_allIn"];
	_allIn = true;
	
	//BIS_fnc_inTrigger may be bugged. I suggrest research if this fails
	{
		if (!(["area_base", getPosATL _x] call BIS_fnc_inTrigger)) then {
			_allIn = false;
		};
	} forEach allPlayers;
	
	//If every player is in the marker
	if (_allIn) then {
		//Set our mode so that we cant spam the action
		//We wrap it in the isServer check for when we are in the editor
		if (!isServer) then {
			BONYO_currentMode = "transition";
		};
		
		[] remoteExecCall ["BONYO_fnc_startRound", 2];
	} else {
		hint "All players must be in the play area to start a round!";
	};
}, nil, 6, false, true, "", "BONYO_currentMode == 'idle'"];

//Add our tracker action
_this addAction ["Spawn Trackers $25", {
	if (25 call BONYO_fnc_purchase) then {
		[] remoteExec ["BONYO_fnc_spawnTrackers", 2];
		
		hint "Trackers Purchased!";
		
	} else {
		hint "You can't afford this!";
	};
}, nil, 6, false, true, "", "BONYO_currentMode == 'activeround'"];
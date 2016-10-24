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
		[] remoteExec ["BONYO_fnc_startRound", 2];
	} else {
		hint "All players must be in the play area to start a round!";
	};
}];
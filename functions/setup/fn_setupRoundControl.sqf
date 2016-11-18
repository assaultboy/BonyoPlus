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

//Available during 'idle'---------------------------------------------------------

//Add our Update Log action
_this addAction ["<t color='#ff0000'>What's New?</t>", {
	"What's New" hintC [
		parseText "Clink the link below to open a webpage with the latest release notes",
		parseText format ["<a underline='true' color='#9b9bff' href='https://github.com/assaultboy/BonyoPlus/releases/V%1'>Update&#160;Log&#160;Link</a>", BONYO_var_Version]
	];
	
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];

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
		[] remoteExecCall ["BONYO_fnc_startRound", 2];
	} else {
		hint "All players must be in the play area to start a round!";
	};
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];
//--------------------------------------------------------------------------------



//Available during 'activeround'--------------------------------------------------
//Add our tracker action
_this addAction ["Purchase Trackers $25", {
	if (25 call BONYO_fnc_purchase) then {
		[] remoteExec ["BONYO_fnc_spawnTrackers", 2];
		
		hint "Trackers Purchased!";
		
	} else {
		hint "You can't afford this!";
	};
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'activeround'"];
//--------------------------------------------------------------------------------
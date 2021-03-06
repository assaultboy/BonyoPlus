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

//Don't kill the object please
_this allowDamage false;

//Save space
private ["_req_idle"];
_req_idle = "([] call BONYO_fnc_getMode) == 'idle'";

//Available during 'idle'---------------------------------------------------------

//Add our Update Log action
_this addAction ["<t color='#ff0000'>What's New?</t>", {
	"What's New" hintC [
		parseText "Clink the link below to open a webpage with the latest release notes",
		parseText "<a underline='true' color='#9b9bff' href='https://github.com/assaultboy/BonyoPlus/releases'>Update&#160;Log&#160;Link</a>"
	];
	
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];
}, nil, 6, false, true, "", _req_idle];

//Add our Stats Action
_this addAction ["<t color='#00ff00'>Show me Stats</t>", {
	"Stats" hintC [
		parseText format ["Earliest Version Played: V%1", (["versions", [0,0]] call BONYO_fnc_loadStat) select 0],
		parseText format ["Number of Rounds Completed: %1", ["lifetimeRoundCompletes", 0] call BONYO_fnc_loadStat],
		parseText format ["Number of Rounds Failed: %1", ["lifetimeRoundFails", 0] call BONYO_fnc_loadStat],
		parseText format ["Highest Round Achieved: %1", ["highestRound", 0] call BONYO_fnc_loadStat],
		parseText format ["Supply Drops opened: %1", ["lifetimeSupplyDrops", 0] call BONYO_fnc_loadStat]
	];
	
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];
}, nil, 6, false, true, "", _req_idle];

//Add our Wave start option
_this addAction ["Start Wave", {
	//Check if every player is within the marker
	private ["_allIn"];
	_allIn = true;
	
	{
		if (!(_x inArea "area_base")) then {
			_allIn = false;
		};
	} forEach allPlayers;
	
	//If every player is in the marker
	if (_allIn) then {
		[] remoteExecCall ["BONYO_fnc_startRound", 2];
	} else {
		hint "All players must be in the play area to start a round!";
	};
}, nil, 6, false, true, "", _req_idle];
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
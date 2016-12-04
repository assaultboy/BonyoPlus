//Let's initialize some variables

//This will track our current version for saving
BONYO_var_Version = 0.13;

//Fuck you VCOM
Vcom_ActivateAI = false;

/*---------------------------------------------------------------------------------------------------------
These variables are stored in the missionNamespace and are annotated here for reference

BONYO_currentRound
	This is a integer representing the current round, it should default to -1
	
BONYO_currentMode
	This a string to represent the current round, below are the values
		none - This should be the default value
		idle - Inbetween rounds
		activeround - During a round when enemies are still alive and present
----------------------------------------------------------------------------------------------------------*/

[] call BONYO_fnc_compileStats;

[] call BONYO_fnc_compileRoles;

if (isServer) then {
	//Set our variables because we aren't a peasent client
	"idle" call BONYO_fnc_setMode;
	1 call BONYO_fnc_setRound;
	
	BONYO_activeEnemyUnitList = [];
	
	[] call BONYO_fnc_compileMarkerLists;

	[] call BONYO_fnc_compileRemarks;
	
	[] call BONYO_fnc_compileFactions;
};

if (hasInterface) then {
	//Check for current version
	private ["_versions"];
	
	_versions = (["versions", -1] call BONYO_fnc_loadStat);
	
	//IF no version is found set both earliest and current
	if (typeName _versions == "SCALAR") then {
		_versions = [BONYO_var_Version, BONYO_var_Version];
	};
	
	["versions", [_versions select 0, BONYO_var_Version]] call BONYO_fnc_saveStat;
	
	//Check for the old points
	private ["_balance"];
	
	//Check if the old balance has not been set
	_balance = profileNamespace getVariable ["BONYOPLUS_points", -1];
	
	if (_balance != -1) then {
		["points", _balance] call BONYO_fnc_saveStat;
		profileNamespace setVariable ["BONYOPLUS_points", nil];
	};
};

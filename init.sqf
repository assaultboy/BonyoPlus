//Let's initialize some variables

//Fuck you VCOM
Vcom_ActivateAI = false;

//These variables are only here so the client can read them, they should not be set by the client----------
//This is the round that will be started when the button is pressed
BONYO_currentRound = 1;

//This is set to the current Mode
BONYO_currentMode = "idle";
//----------------------------------------------------------------------------------------------------------


if (isServer) then {
	BONYO_enemyInfSpawnList = [];
	
	BONYO_activeEnemyUnitList = [];
	
	BONYO_roundCompleteRemarks = [];
	BONYO_roundFailRemarks = [];
	
	_nil = [] execVM "scripts\setup\compileMarkerLists.sqf";
	
	_nil = [] execVM "scripts\setup\defineRemarks.sqf";
};
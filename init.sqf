//Let's initialize some variables

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


if (isServer) then {
	//Set our variables because we aren't a peasent client
	"idle" call BONYO_fnc_setMode;
	1 call BONYO_fnc_setRound;
	
	BONYO_activeEnemyUnitList = [];
	
	BONYO_enemyInfSpawnList = [];
	BONYO_enemyVicSpawnList = [];
	[] call BONYO_fnc_compileMarkerLists;
	
	BONYO_roundCompleteRemarks = [];
	BONYO_roundFailRemarks = [];
	[] call BONYO_fnc_compileRemarks;
	
	BONYO_enemyInfFactionList = [];
	BONYO_enemyVicFactionList = [];
	[] call BONYO_fnc_compileFactions;
};
/*
	BONYO_fnc_handleRoundEndStats
	
	DESCRIPTION:
		This function will handle all stats dealing with the end of a round
		This function must be executed on a client
		
	PARAMETERS:
		Round Number
			The completed round number
			
		Success
			Boolean refering to the success of the round
			
	RETURNS
		Nothing
		
	EXAMPLE
		[10, true] call BONYO_fnc_handleRoundEndStats
*/

//Only for clients
if (!hasInterface) exitWith {true};

if (_this select 1) then {
	//Add to our lifetime rounds completed stat
	["lifetimeRoundCompletes", 1] call BONYO_fnc_addStat;
	
	//If we beat the current record then set it
	if ([("highestRound", 0] call BONYO_fnc_loadStat) < (_this select 0)) then {
		["highestRound", _this select 0] call BONYO_fnc_saveStat;
	};
} else {
	["lifetimeRoundFails", 1] call BONYO_fnc_addStat;
};
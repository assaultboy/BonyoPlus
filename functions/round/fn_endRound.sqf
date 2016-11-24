/*
	BONYO_fnc_endRound
	
	DESCRIPTION:
		This function will end the current round IAW the passed parameter
		This function should only be called from the server
		
	PARAMETERS:
		0 BOOLEAN:
			Successful round. If true the round will be ended as if the round was completed.
			If false it will be ended as if the round was a failure.
			
	RETURNS
		Nothing
		
	EXAMPLE
		true call BONYO_fnc_endRound
*/

//Only run on the server
if (!isServer) exitWith {true};

//Now round is active
if (([] call BONYO_fnc_getMode) == "activeround") then {
	//Set our Mode
	"idle" call BONYO_fnc_setMode;
	
	//Bring everyone out of specator mode
	[] remoteExec ["BONYO_fnc_exitSpectator", 0];
	
	//If the round was successful
	if (_this) then {
		//Show our notification
		["WaveComplete", [[] call BONYO_fnc_getRound, BONYO_roundCompleteRemarks call BIS_fnc_selectRandom]] remoteExec ["BIS_fnc_showNotification", 0];
		
		//Set our new round
		(([] call BONYO_fnc_getRound) + 1) call BONYO_fnc_setRound;
		
		//Calculate our supply drop chances and hand it out as needed
		[] call BONYO_fnc_calculateSupplyDrops;
		
		//Start the loot countdown
		([] call BONYO_fnc_getRound) spawn {
			"You have (5) Minutes to Loot" call BONYO_fnc_print;
			sleep 120;
			if (([] call BONYO_fnc_getMode) == "idle" && ([] call BONYO_fnc_getRound) == _this) then {
				"You have (3) Minutes Left to Loot" call BONYO_fnc_print;
				sleep 120;
				
				if (([] call BONYO_fnc_getMode) == "idle" && ([] call BONYO_fnc_getRound) == _this) then {
					"You have (1) Minute Left to Loot" call BONYO_fnc_print;
					sleep 30;
					
					if (([] call BONYO_fnc_getMode) == "idle" && ([] call BONYO_fnc_getRound) == _this) then {
						"You have (30) Seconds Left to Loot" call BONYO_fnc_print;
						sleep 30;
						
						if (([] call BONYO_fnc_getMode) == "idle" && ([] call BONYO_fnc_getRound) == _this) then {
							"Looting Period Has Ended" call BONYO_fnc_print;
							
							//Clear all corpses, gear piles, and vehicles
							[getMarkerPos "area_base", 10000] call BONYO_fnc_cleanup;
						};
					};
				};
			};
		};
	
	//If the round was a failure
	} else {
		//Tell the players
		["WaveFail", [[] call BONYO_fnc_getRound, BONYO_roundFailRemarks call BIS_fnc_selectRandom]] remoteExec ["BIS_fnc_showNotification", 0];
		
		//Clear all enemies that are active
		{
			deleteVehicle _x;
		} forEach BONYO_activeEnemyUnitList;
		
		//Clear all corpses, gear piles, and vehicles
		[getMarkerPos "area_base", 10000] call BONYO_fnc_cleanup;
	};
	
	//Call our stats handler on every client
	[[] call BONYO_fnc_getRound, _this] remoteExec ["BONYO_fnc_handleRoundEndStats", 0];
	
//A round is already active
} else {
	"Warning! Can only end round during mode 'activeround'" call BONYO_fnc_print;
};
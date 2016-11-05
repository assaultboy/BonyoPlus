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
if (BONYO_currentMode == "activeround") then {
	//Set our Mode
	BONYO_currentMode = "idle";
	
	//Bring everyone out of specator mode
	[] remoteExec ["BONYO_fnc_exitSpectator", 0];
	
	//If the round was successful
	if (_this) then {
		["WaveComplete", [BONYO_currentRound, BONYO_roundCompleteRemarks call BIS_fnc_selectRandom]] remoteExec ["BIS_fnc_showNotification", 0];
		
		BONYO_currentRound = BONYO_currentRound + 1;
		
		//Start the loot countdown
		BONYO_currentRound spawn {
			"You have (5) Minutes to Loot" call BONYO_fnc_print;
			sleep 120;
			if (BONYO_currentMode == "idle" && BONYO_currentRound == _this) then {
				"You have (3) Minutes Left to Loot" call BONYO_fnc_print;
				sleep 120;
				
				if (BONYO_currentMode == "idle" && BONYO_currentRound == _this) then {
					"You have (1) Minute Left to Loot" call BONYO_fnc_print;
					sleep 30;
					
					if (BONYO_currentMode == "idle" && BONYO_currentRound == _this) then {
						"You have (30) Seconds Left to Loot" call BONYO_fnc_print;
						sleep 30;
						
						if (BONYO_currentMode == "idle" && BONYO_currentRound == _this) then {
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
		["WaveFail", [BONYO_currentRound, BONYO_roundFailRemarks call BIS_fnc_selectRandom]] remoteExec ["BIS_fnc_showNotification", 0];
		
		//Clear all enemies that are active
		{
			deleteVehicle _x;
		} forEach BONYO_activeEnemyUnitList;
		
		//Clear all corpses, gear piles, and vehicles
		[getMarkerPos "area_base", 10000] call BONYO_fnc_cleanup;
	};
	
	//Sync the servers variables with all the clients
	[] call BONYO_fnc_syncVariables;
	
//A round is already active
} else {
	"Warning! Can only end round during mode 'activeround'" call BONYO_fnc_print;
};
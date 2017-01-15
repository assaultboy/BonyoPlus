/*
	BONYO_fnc_spawnSupplyDrop
	
	DESCRIPTION:
		This function will airdrop a supply drop in at the given location for the given player
		This function must be executed on the server
		
	PARAMETERS:
		Position
			The position to airdrop the crate above
		
		Player
			The player that the drop belongs to
			
	RETURNS
		nothing
		
	EXAMPLE
		[_pos, _player] call BONYO_fnc_spawnSupplyDrop
*/

//Only on the server
if (!isServer) exitWith {true};

private ["_crate", "_para", "_dz"];

_dz = [_this select 0 select 0, _this select 0 select 1, 200];

//Create our crate and parachute
_crate = "Land_PaperBox_closed_F" createVehicle [0,0,200];
_para = "B_Parachute_02_F" createVehicle [0,0,250];

//Move everything to where it needs to be
_para setPos _dz;
_crate setPos _dz;

//Attach our crate to the parachute
_crate attachTo [_para, [0,0,-3]];

//Let everyone know about the fortunate player
["SupplyDrop", [format [BONYO_supplyDropRemarks call BIS_fnc_selectRandom, name (_this select 1)]]] remoteExec ["BIS_fnc_showNotification", 0];

//Let the crate get deleted on cleanup
_crate setVariable ["BONYO_clearOnCleanup", true];
_para setVariable ["BONYO_clearOnCleanup", true];

//Force the action
_crate remoteExec ["BONYO_fnc_addSupplyDropAction", _this select 1];
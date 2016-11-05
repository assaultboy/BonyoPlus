/*
	BONYO_fnc_becomeDog
	
	DESCRIPTION:
		This function will make the local player a dog
		This function must be run on a client
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_BecomeDog
*/

//Clients only
if (!hasInterface) exitWith {true};

private ["_dog", "_oldUnit", "_cam"];

_oldUnit = player;

_dog = (createGroup CIVILIAN) createUnit ["Alsatian_Sandblack_F", position _oldUnit, [], 0, "NONE"];
selectPlayer _dog;

//Set our camera up
cam = "Land_HandyCam_F" createVehicleLocal [0,0,0];
cam hideObject true;
cam attachTo [player, [0,0,2]];
cam setVectorUp [0,0.99,0.01];
cam switchCamera "Internal";
findDisplay 46 displayAddEventHandler ["MouseButtonDown", {
	if (_this select 1 == 0) then {
		player forceWeaponFire [currentMuzzle player, currentWeaponMode player];
	};
	false
}];
findDisplay 46 displayAddEventHandler ["KeyDown", {
	if (_this select 1 in actionKeys "ReloadMagazine") then {
		reload player;
	};
	false
}];


//Hide our actual player
_oldUnit disableAI "ALL";
_oldUnit setPos [0,0,0];

//Save our actual player
missionNamespace setVariable ["BONYO_actualPlayerInfo", _oldUnit];

//When we die move us back to the actual player and move us to the respawn point
_dog addEventHandler ["Killed", {
	selectPlayer (missionNamespace getVariable ["BONYO_actualPlayerInfo", nil]);
	player setPos (getMarkerPos "respawn");
}];
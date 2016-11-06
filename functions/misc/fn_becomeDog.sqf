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
cam attachTo [player, [0,-1,1]];
cam switchCamera "Internal";

findDisplay 46 displayAddEventHandler ["MouseButtonDown", {
	if (_this select 1 == 0) then {
		player playMove "Dog_Idle_Bark";
	};
	false
}];
findDisplay 46 displayAddEventHandler ["KeyDown", {
	if (_this select 1 in actionKeys "ReloadMagazine") then {
		player playMove "Dog_Sit";
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
	findDisplay 46 displayRemoveAllEventHandlers "KeyDown";
	findDisplay 46 displayRemoveAllEventHandlers "MouseButtonDown";
	
	selectPlayer (missionNamespace getVariable ["BONYO_actualPlayerInfo", nil]);
	player setPos (getMarkerPos "respawn");
}];
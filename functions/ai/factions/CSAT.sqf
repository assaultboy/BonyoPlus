private ["_groupList"];

_groupList = [];

//Fireteam
_groupList pushBack [
	["O_Soldier_TL_F", "CORPORAL"],
	["O_Soldier_AR_F", "PRIVATE"],
	["O_Soldier_LAT_F", "PRIVATE"],
	["O_Soldier_F", "PRIVATE"]
];

//Platoon HQ
_groupList pushBack [
	["O_officer_F", "LIEUTENANT"],
	["O_Soldier_SL_F", "SERGEANT"],
	["O_medic_F", "PRIVATE"]
];

//Sniper Team
_groupList pushBack [
	["O_sniper_F", "SERGEANT"],
	["O_spotter_F", "CORPORAL"]
];

//Playercount 5+
if ((count allPlayers) >= 5) then {
	//Rifle Squad
	_groupList pushBack [
		["O_Soldier_SL_F", "SERGEANT"],
		["O_Soldier_TL_F", "CORPORAL"],
		["O_Soldier_F", "PRIVATE"],
		["O_Soldier_F", "PRIVATE"],
		["O_medic_F", "PRIVATE"],
		["O_Soldier_AR_F", "PRIVATE"],
		["O_soldier_M_F", "PRIVATE"],
		["O_Soldier_LAT_F", "PRIVATE"]
	];
};

(_groupList call BIS_fnc_selectRandom)
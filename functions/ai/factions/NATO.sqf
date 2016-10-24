private ["_groupList"];

_groupList = [];

//Fireteam
_groupList pushBack [
	["B_Soldier_TL_F", "CORPORAL"],
	["B_Soldier_AR_F", "PRIVATE"],
	["B_soldier_LAT_F", "PRIVATE"],
	["B_Soldier_F", "PRIVATE"]
];

//Platoon HQ
_groupList pushBack [
	["B_Soldier_SL_F", "LIEUTENANT"],
	["B_Soldier_TL_F", "SERGEANT"],
	["B_medic_F", "CORPORAL"]
];

//Sniper Team
_groupList pushBack [
	["B_sniper_F", "SERGEANT"],
	["B_spotter_F", "CORPORAL"]
];

//Playercount 5+
if ((count allPlayers) >= 5) then {
	//Rifle Squad
	_groupList pushBack [
		["B_Soldier_SL_F", "SERGEANT"],
		["B_Soldier_TL_F", "CORPORAL"],
		["B_Soldier_F", "PRIVATE"],
		["B_Soldier_F", "PRIVATE"],
		["B_medic_F", "PRIVATE"],
		["B_Soldier_AR_F", "PRIVATE"],
		["B_soldier_M_F", "PRIVATE"],
		["B_soldier_LAT_F", "PRIVATE"]
	];
};

(_groupList call BIS_fnc_selectRandom);
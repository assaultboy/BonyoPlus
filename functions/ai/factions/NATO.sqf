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
	["B_officer_F", "LIEUTENANT"],
	["B_Soldier_SL_F", "SERGEANT"],
	["B_medic_F", "PRIVATE"]
];

//Sniper Team
_groupList pushBack [
	["B_sniper_F", "SERGEANT"],
	["B_spotter_F", "CORPORAL"]
];

//AA Team
_groupList pushBack [
	["B_Soldier_TL_F","SERGEANT"],
	["B_soldier_AA_F","CORPORAL"],
	["B_Soldier_lite_F","PRIVATE"],
	["B_soldier_AAA_F","PRIVATE"]
];

//Weapons Team
_groupList pushBack [
	["B_Soldier_TL_F","SERGEANT"],
	["B_HeavyGunner_F","PRIVATE"],
	["B_soldier_AR_F","PRIVATE"],
	["B_soldier_AAR_F","PRIVATE"]
];

//Sharpshooter Team
_groupList pushBack [
	["B_Sharpshooter_F","CORPORAL"],
	["B_soldier_M_F","PRIVATE"],
	["B_soldier_M_F","PRIVATE"]
];

//AT Team
_groupList pushBack [
	["B_Soldier_TL_F","SERGEANT"],
	["B_soldier_AAT_F","PRIVATE"],
	["B_soldier_AT_F","CORPORAL"],
	["B_Soldier_lite_F","PRIVATE"]
];

//Combat Engineer Team
_groupList pushBack [
	["B_Soldier_TL_F","SERGEANT"],
	["B_soldier_exp_F","PRIVATE"],
	["B_soldier_exp_F","PRIVATE"],
	["B_engineer_F","PRIVATE"]
];

//SF Scout Team
_groupList pushBack [
	["B_recon_TL_F","SERGEANT"],
	["B_recon_F","PRIVATE"],
	["B_recon_medic_F","PRIVATE"],
	["B_recon_M_F","PRIVATE"]
];

//SF JTAC Team
_groupList pushBack [
	["B_recon_JTAC_F","PRIVATE"],
	["B_Recon_Sharpshooter_F","PRIVATE"]
];

(_groupList call BIS_fnc_selectRandom)
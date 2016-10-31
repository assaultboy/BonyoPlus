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

//AT Team
_groupList pushBack [
	["O_Soldier_TL_F","SERGEANT"],
	["O_Soldier_AT_F","CORPORAL"],
	["O_Soldier_AAT_F","PRIVATE"],
	["O_Soldier_lite_F","PRIVATE"]
];

//AA Team
_groupList pushBack [
	["O_Soldier_TL_F","SERGEANT"],
	["O_Soldier_AAA_F","PRIVATE"],
	["O_Soldier_AA_F","CORPORAL"],
	["O_Soldier_lite_F","PRIVATE"]
];

//Weapons Team
_groupList pushBack [
	["O_Soldier_TL_F","SERGEANT"],
	["O_Soldier_AR_F","PRIVATE"],
	["O_HeavyGunner_F","CORPORAL"],
	["O_Soldier_AAR_F","PRIVATE"],
	["O_Soldier_A_F","PRIVATE"]
];

//Combat Engineer Team
_groupList pushBack [
	["O_Soldier_TL_F","SERGEANT"],
	["O_soldier_exp_F","PRIVATE"],
	["O_engineer_F","PRIVATE"],
	["O_engineer_F","PRIVATE"]
];

//SF Scout Team
_groupList pushBack [
	["O_recon_TL_F","SERGEANT"],
	["O_recon_LAT_F","PRIVATE"],
	["O_recon_medic_F","PRIVATE"],
	["O_recon_M_F","PRIVATE"]
];

//Sharp Shooter Team
_groupList pushBack [
	["O_Sharpshooter_F","SERGEANT"],
	["O_soldier_M_F","PRIVATE"],
	["O_soldier_M_F","PRIVATE"]
];

//SF JTAC Team
_groupList pushBack [
	["O_Pathfinder_F","SERGEANT"],
	["O_recon_JTAC_F","PRIVATE"]
];

(_groupList call BIS_fnc_selectRandom)
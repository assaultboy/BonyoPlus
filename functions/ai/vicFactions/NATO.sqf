private ["_groupList"];

_groupList = [];

//HUNTER HMG
_groupList pushBack [ 
	"B_MRAP_01_hmg_F",
	[
		"B_Soldier_lite_F",
		"B_Soldier_lite_F",
		""
	]
];

//RIDGEBACK HMG
_groupList pushBack [ 
	"blx_ridgback_HMG_W",
	[
		"B_Soldier_lite_F",
		"B_Soldier_lite_F",
		""
	]
];

//PROWLER
_groupList pushBack [ 
	"B_LSV_01_armed_F",
	[
		"B_Soldier_lite_F",
		"B_Soldier_lite_F",
		""
	]
];

//STRIDER HMG
_groupList pushBack [ 
	"MU_NATO_Strider_HMG",
	[
		"B_Soldier_lite_F",
		"B_Soldier_lite_F",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
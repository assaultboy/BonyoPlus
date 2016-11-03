private ["_groupList"];

_groupList = [];

//Punisher HMG
_groupList pushBack [ 
	"O_MRAP_02_hmg_F",
	[
		"O_Soldier_lite_F",
		"O_Soldier_lite_F",
		""
	]
];

//Opfor Prowler HMG
_groupList pushBack [ 
	"O_LSV_02_armed_F",
	[
		"O_Soldier_lite_F",
		"O_Soldier_lite_F",
		""
	]
];


(_groupList call BIS_fnc_selectRandom)
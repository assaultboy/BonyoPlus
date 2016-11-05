private ["_groupList"];

_groupList = [];

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
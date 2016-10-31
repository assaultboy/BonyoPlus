private ["_groupList"];

_groupList = [];

//Technical
_groupList pushBack [ 
	"B_G_Offroad_01_armed_F",
	[
		"B_G_Soldier_lite_F",
		"B_G_Soldier_lite_F",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
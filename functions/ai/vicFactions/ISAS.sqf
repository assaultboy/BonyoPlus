private ["_groupList"];

_groupList = [];

//Technical
_groupList pushBack [ 
	"O_MU_islam_Offroad_01_armed_F",
	[
		"O_MU_islam_R1_F",
		"O_MU_islam_R1_F",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
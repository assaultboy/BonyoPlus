private ["_groupList"];

_groupList = [];

//LMTV
_groupList pushBack [ 
	"rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy",
	[
		"rhsusf_army_ocp_driver",
		"rhsusf_army_ocp_driver_armored",
		""
	]
];

//HMMWV
_groupList pushBack [ 
	"rhsusf_m1025_w_m2",
	[
		"rhsusf_army_ocp_driver",
		"rhsusf_army_ocp_driver_armored",
		""
	]
];

//M113 M2
_groupList pushBack [ 
	"rhsusf_m113_usarmy",
	[
		"rhsusf_army_ocp_combatcrewman",
		"",
		"rhsusf_army_ocp_combatcrewman"
	]
];

//M113 M240B
_groupList pushBack [ 
	"rhsusf_m113_usarmy_M240",
	[
		"rhsusf_army_ocp_combatcrewman",
		"",
		"rhsusf_army_ocp_combatcrewman"
	]
];

//MRAP
_groupList pushBack [ 
	"rhsusf_m113_usarmy_M240",
	[
		"rhsusf_army_ocp_driver",
		"rhsusf_army_ocp_driver_armored",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
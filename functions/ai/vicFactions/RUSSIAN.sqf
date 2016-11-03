private ["_groupList"];

_groupList = [];

//BRDM
_groupList pushBack [ 
	"rhsgref_BRDM2_vdv",
	[
		"rhs_vmf_flora_combatcrew",
		"rhs_vmf_flora_combatcrew",
		""
	]
];

//BRDM Lite
_groupList pushBack [ 
	"rhsgref_BRDM2_HQ_vdv",
	[
		"rhs_vmf_flora_combatcrew",
		"rhs_vmf_flora_combatcrew",
		""
	]
];

//BTR-70
_groupList pushBack [ 
	"rhs_btr70_vv",
	[
		"rhs_vmf_flora_combatcrew",
		"rhs_vmf_flora_combatcrew",
		""
	]
];

//Bitch Ass BMP
_groupList pushBack [ 
	"rhs_prp3_vv",
	[
		"rhs_vmf_flora_combatcrew",
		"rhs_vmf_flora_combatcrew",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
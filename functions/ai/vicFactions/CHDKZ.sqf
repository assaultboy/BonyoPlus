private ["_groupList"];

_groupList = [];

//BTR-70
_groupList pushBack [ 
	"rhsgref_ins_btr70",
	[
		"rhsgref_ins_g_crew",
		"rhsgref_ins_g_crew",
		""
	]
];

//BRDM Lite
_groupList pushBack [ 
	"rhsgref_BRDM2_HQ_ins_g",
	[
		"rhsgref_ins_g_crew",
		"rhsgref_ins_g_crew",
		""
	]
];

//BRDM
_groupList pushBack [ 
	"rhsgref_BRDM2_ins_g",
	[
		"rhsgref_ins_g_crew",
		"rhsgref_ins_g_crew",
		""
	]
];

//UAZ DSHKM
_groupList pushBack [ 
	"rhsgref_ins_g_uaz_dshkm_chdkz",
	[
		"rhsgref_ins_g_rifleman_akm",
		"rhsgref_ins_g_rifleman_akm",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
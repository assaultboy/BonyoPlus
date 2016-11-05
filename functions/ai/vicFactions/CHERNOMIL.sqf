private ["_groupList"];

_groupList = [];

//UAZ DSHKM
_groupList pushBack [ 
	"rhsgref_cdf_reg_uaz_dshkm",
	[
		"rhsgref_cdf_reg_rifleman",
		"rhsgref_cdf_reg_rifleman",
		""
	]
];

//BRDM Lite
_groupList pushBack [ 
	"rhsgref_BRDM2_HQ",
	[
		"rhsgref_cdf_reg_crew",
		"rhsgref_cdf_reg_crew",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
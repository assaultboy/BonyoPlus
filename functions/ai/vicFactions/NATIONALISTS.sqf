private ["_groupList"];

_groupList = [];

//BTR-70
_groupList pushBack [ 
	"rhsgref_nat_btr70",
	[
		"rhsgref_nat_pmil_crew",
		"rhsgref_nat_pmil_crew",
		""
	]
];

//UAZ DSHKM
_groupList pushBack [ 
	"rhsgref_nat_uaz_dshkm",
	[
		"rhsgref_nat_crew",
		"rhsgref_nat_crew",
		""
	]
];

(_groupList call BIS_fnc_selectRandom)
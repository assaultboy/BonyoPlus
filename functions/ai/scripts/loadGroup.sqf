private ["_groupList"];

_groupList = [];

//Fireteam
_groupList pushBack [
	[_teamleader, "CORPORAL"],
	[_ar, "PRIVATE"],
	[_marksman, "PRIVATE"],
	[_riflemanAT, "PRIVATE"]
];

//Platoon HQ
_groupList pushBack [
	[_squadleader, "LIEUTENANT"],
	[_teamleader, "SERGEANT"],
	[_medic, "CORPORAL"]
];

//Playercount 5+
if ((count allPlayers) >= 5) then {
	//Rifle Squad
	_groupList pushBack [
		[_squadleader, "SERGEANT"],
		[_teamleader, "CORPORAL"],
		[_rifleman, "PRIVATE"],
		[_rifleman, "PRIVATE"],
		[_medic, "PRIVATE"],
		[_ar, "PRIVATE"],
		[_marksman, "PRIVATE"],
		[_riflemanAT, "PRIVATE"]
	];
};

_groupProto = (_groupList call BIS_fnc_selectRandom);
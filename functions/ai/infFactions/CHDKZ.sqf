private ["_groupList"];

_groupList = [];

//Sniper/Spotter Team
_groupList pushBack [
	['rhsgref_ins_g_sniper','CORPORAL'],
	['rhsgref_ins_g_spotter','SERGEANT']
];

//RPG Team
_groupList pushBack [
	['rhsgref_ins_g_militiaman_mosin','SERGEANT'],
	['rhsgref_ins_g_grenadier_rpg','CORPORAL'],
	['rhsgref_ins_g_rifleman_aksu','PRIVATE'],
	['rhsgref_ins_g_medic','PRIVATE']
];

//Engineer Team
_groupList pushBack [
	['rhsgref_ins_g_saboteur','CORPORAL'],
	['rhsgref_ins_g_engineer','PRIVATE'],
	['rhsgref_ins_g_engineer','PRIVATE']
];

//Insurgent Squad
_groupList pushBack [
	['rhsgref_ins_g_squadleader','LIEUTENANT'],
	['rhsgref_ins_g_rifleman_RPG26','CORPORAL'],
	['rhsgref_ins_g_rifleman_akm','SERGEANT'],
	['rhsgref_ins_g_machinegunner','PRIVATE'],
	['rhsgref_ins_g_medic','PRIVATE'],
	['rhsgref_ins_g_militiaman_mosin','CORPORAL']
];

//HQ
_groupList pushBack [
	['rhsgref_ins_g_commander','CAPTAIN'],
	['rhsgref_ins_g_squadleader','LIEUTENANT'],
	['rhsgref_ins_g_militiaman_mosin','SERGEANT']
];

//Fireteam One (Medic)
_groupList pushBack [
	['rhsgref_ins_g_rifleman','PRIVATE'],
	['rhsgref_ins_g_rifleman_akm','PRIVATE'],
	['rhsgref_ins_g_medic','PRIVATE'],
	['rhsgref_ins_g_saboteur','PRIVATE']
];

//Bolt-Action Pair
_groupList pushBack [
	['rhsgref_ins_g_militiaman_mosin','PRIVATE'],
	['rhsgref_ins_g_militiaman_mosin','PRIVATE']
];

//Fireteam Two (MG)
_groupList pushBack [
	['rhsgref_ins_g_rifleman','PRIVATE'],
	['rhsgref_ins_g_militiaman_mosin','PRIVATE'],
	['rhsgref_ins_g_rifleman_akm','PRIVATE'],
	['rhsgref_ins_g_machinegunner','PRIVATE']
];

//Heavy AT Team
_groupList pushBack [
	['rhsgref_ins_g_squadleader','LIEUTENANT'],
	['rhsgref_ins_g_medic','CORPORAL'],
	['rhsgref_ins_g_grenadier_rpg','PRIVATE'],
	['rhsgref_ins_g_grenadier_rpg','SERGEANT']
];

//Downed Pilots (I liked their hats)
_groupList pushBack [
	['rhsgref_ins_g_pilot','SERGEANT'],
	['rhsgref_ins_g_pilot','CORPORAL']
];

(_groupList call BIS_fnc_selectRandom)
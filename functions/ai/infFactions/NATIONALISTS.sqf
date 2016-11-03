private ["_groupList"];

_groupList = [];

//Bolt-Action Team
_groupList pushBack [
	['rhsgref_nat_militiaman_kar98k','CORPORAL'],
	['rhsgref_nat_militiaman_kar98k','PRIVATE']
];

//Hunter Group
_groupList pushBack [
	['rhsgref_nat_hunter','SERGEANT'],
	['rhsgref_nat_rifleman_akms','PRIVATE'],
	['rhsgref_nat_medic','PRIVATE'],
	['rhsgref_nat_rifleman_akms','CORPORAL']
];

//Anti-Tank Team
_groupList pushBack [
	['rhsgref_nat_commander','LIEUTENANT'],
	['rhsgref_nat_grenadier_rpg','SERGEANT'],
	['rhsgref_nat_militiaman_kar98k','CORPORAL'],
	['rhsgref_nat_medic','PRIVATE']
];

//Para-Military Squad
_groupList pushBack [
	['rhsgref_nat_pmil_commander','LIEUTENANT'],
	['rhsgref_nat_pmil_machinegunner','PRIVATE'],
	['rhsgref_nat_pmil_rifleman_aksu','SERGEANT'],
	['rhsgref_nat_pmil_rifleman','CORPORAL'],
	['rhsgref_nat_pmil_rifleman_m92','PRIVATE']
];

//HQ
_groupList pushBack [
	['rhsgref_nat_warlord','CAPTAIN'],
	['rhsgref_nat_militiaman_kar98k','SERGEANT'],
	['rhsgref_nat_militiaman_kar98k','SERGEANT'],
	['rhsgref_nat_commander','LIEUTENANT']
];

//MG Pair
_groupList pushBack [
	['rhsgref_nat_machinegunner','CORPORAL'],
	['rhsgref_nat_rifleman_m92','PRIVATE']
];

//Cell
_groupList pushBack [
	['rhsgref_nat_rifleman_m92','CORPORAL'],
	['rhsgref_nat_machinegunner','PRIVATE'],
	['rhsgref_nat_hunter','PRIVATE'],
	['rhsgref_nat_militiaman_kar98k','PRIVATE']
];

//Para-Military AA
_groupList pushBack [
	['rhsgref_nat_pmil_commander','SERGEANT'],
	['rhsgref_nat_pmil_medic','PRIVATE'],
	['rhsgref_nat_pmil_specialist_aa','CORPORAL']
];

//Mixed Squad
_groupList pushBack [
	['rhsgref_nat_commander','LIEUTENANT'],
	['rhsgref_nat_medic','PRIVATE'],
	['rhsgref_nat_machinegunner','PRIVATE'],
	['rhsgref_nat_rifleman_m92','SERGEANT'],
	['rhsgref_nat_militiaman_kar98k','PRIVATE'],
	['rhsgref_nat_hunter','CORPORAL'],
	['rhsgref_nat_saboteur','PRIVATE']
];

//Nationalist Anti-Air
_groupList pushBack [
	['rhsgref_nat_specialist_aa','PRIVATE'],
	['rhsgref_nat_militiaman_kar98k','CORPORAL']
];

//Heavy Anti-Tank
_groupList pushBack [
	['rhsgref_nat_commander','LIEUTENANT'],
	['rhsgref_nat_medic','PRIVATE'],
	['rhsgref_nat_machinegunner','PRIVATE'],
	['rhsgref_nat_grenadier_rpg','CORPORAL'],
	['rhsgref_nat_grenadier_rpg','CORPORAL']
];

//Scout Team (Silenced)
_groupList pushBack [
	['rhsgref_nat_scout','SERGEANT'],
	['rhsgref_nat_scout','CORPORAL'],
	['rhsgref_nat_scout','PRIVATE']
];

(_groupList call BIS_fnc_selectRandom)
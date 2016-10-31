private ["_groupList"];

_groupList = [];

//Rifle Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_teamleader','SERGEANT'], 
	['rhsusf_army_ocp_rifleman','PRIVATE'], 
	['rhsusf_army_ocp_rifleman','PRIVATE'], 
	['rhsusf_army_ocp_rifleman','PRIVATE']
]; 

//Weapons Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_squadleader','SERGEANT'], 
	['rhsusf_army_ocp_autorifleman','CORPORAL'], 
	['rhsusf_army_ocp_autoriflemana','PRIVATE'], 
	['rhsusf_army_ocp_riflemanat','PRIVATE']
]; 

//Heavy Weapons Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_squadleader','SERGEANT'], 
	['rhsusf_army_ocp_machinegunner','PRIVATE'], 
	['rhsusf_army_ocp_machinegunnera','PRIVATE'], 
	['rhsusf_army_ocp_rifleman','PRIVATE']
]; 

//AT Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_teamleader','SERGEANT'], 
	['rhsusf_army_ocp_javelin','CORPORAL'], 
	['rhsusf_army_ocp_rifleman','PRIVATE'], 
	['rhsusf_army_ocp_rifleman','PRIVATE']
]; 

//AA Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_teamleader','SERGEANT'], 
	['rhsusf_army_ocp_aa','CORPORAL'], 
	['rhsusf_army_ocp_rifleman','PRIVATE'], 
	['rhsusf_army_ocp_rifleman','PRIVATE']
]; 

//Breaching Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_teamleader','SERGEANT'], 
	['rhsusf_army_ocp_rifleman_m590','PRIVATE'], 
	['rhsusf_army_ocp_rifleman_m4','PRIVATE'], 
	['rhsusf_army_ocp_autorifleman','PRIVATE']
]; 

//FO Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_fso','LIEUTENANT'], 
	['rhsusf_army_ocp_jfo','SERGEANT']
]; 

//Combat Engineer Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_teamleader','SERGEANT'], 
	['rhsusf_army_ocp_engineer','PRIVATE'], 
	['rhsusf_army_ocp_explosives','PRIVATE'], 
	['rhsusf_army_ocp_rifleman','PRIVATE']
]; 

//Medical Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_teamleader','SERGEANT'], 
	['rhsusf_army_ocp_medic','PRIVATE'], 
	['rhsusf_army_ocp_medic','PRIVATE']
]; 

//Light Sniper Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_sniper','LIEUTENANT'], 
	['rhsusf_army_ocp_marksman','SERGEANT']
]; 

//Heavy Sniper Team 
_groupList pushBack [ 
	['rhsusf_army_ocp_sniper_m107','LIEUTENANT'], 
	['rhsusf_army_ocp_sniper_m24sws','SERGEANT']
];

(_groupList call BIS_fnc_selectRandom)
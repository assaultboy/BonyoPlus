private ["_groupList"];

_groupList = [];

//Sharpshooter Team
_groupList pushBack [
    ["rhs_vdv_marksman","SERGEANT"],
    ["rhs_vdv_marksman","CORPORAL"]
];

//Engineer Team
_groupList pushBack [
       ['rhs_vdv_engineer','SERGEANT'],
       ['rhs_vdv_rifleman','PRIVATE'],
       ['rhs_vdv_rifleman','PRIVATE'],
       ['rhs_vdv_rifleman','PRIVATE']
];

//Fireteam
_groupList pushBack [
       ['rhs_vdv_grenadier','CORPORAL'],
       ['rhs_vdv_rifleman','PRIVATE'],
       ['rhs_vdv_rifleman','PRIVATE'],
       ['rhs_vdv_machinegunner','PRIVATE'],
       ['rhs_vdv_machinegunner_assistant','PRIVATE']
];

//RPG Team
_groupList pushBack [
       ['rhs_vdv_junior_sergeant','SERGEANT'],
       ['rhs_vdv_at','CORPORAL'],
       ['rhs_vdv_at','PRIVATE'],
       ['rhs_vdv_medic','PRIVATE']
];

//MG Team
_groupList pushBack [
       ['rhs_vdv_machinegunner','SERGEANT'],
       ['rhs_vdv_machinegunner','PRIVATE'],
       ['rhs_vdv_machinegunner','CORPORAL'],
       ['rhs_vdv_machinegunner','CORPORAL'],
       ['rhs_vdv_medic','PRIVATE']
];

//Anti-Air Team
_groupList pushBack [
       ['rhs_vdv_aa','CORPORAL'],
       ['rhs_vdv_aa','PRIVATE'],
       ['rhs_vdv_aa','PRIVATE']
];

//Anti-Tank Team
_groupList pushBack [
       ['rhs_vdv_at','CORPORAL'],
       ['rhs_vdv_at','PRIVATE'],
       ['rhs_vdv_at','PRIVATE']
];

(_groupList call BIS_fnc_selectRandom)
private ["_groupList"];

_groupList = [];

//National Guard (Fireteam)
_groupList pushBack [
	['rhsgref_cdf_b_ngd_rifleman_lite','SERGEANT'],
	['rhsgref_cdf_b_ngd_rifleman','CORPORAL'],
	['rhsgref_cdf_b_ngd_rifleman_m92','PRIVATE'],
	['rhsgref_cdf_b_ngd_medic','PRIVATE']
];

//National Guard (Fireteam Two)
_groupList pushBack [
	['rhsgref_cdf_b_ngd_squadleader','SERGEANT'],
	['rhsgref_cdf_b_ngd_rifleman_m92','PRIVATE'],
	['rhsgref_cdf_b_ngd_rifleman','CORPORAL'],
	['rhsgref_cdf_b_ngd_machinegunner','PRIVATE']
];

//National Guard (Support Group)
_groupList pushBack [
	['rhsgref_cdf_b_ngd_squadleader','SERGEANT'],
	['rhsgref_cdf_b_ngd_medic','PRIVATE'],
	['rhsgref_cdf_b_ngd_grenadier_rpg','CORPORAL']
];

//National Guard (Engineers)
_groupList pushBack [
	['rhsgref_cdf_b_ngd_rifleman_lite','CORPORAL'],
	['rhsgref_cdf_b_ngd_engineer','PRIVATE'],
	['rhsgref_cdf_b_ngd_engineer','PRIVATE']
];


//Paratroops (Heavy AT)
_groupList pushBack [
	['rhsgref_cdf_b_para_squadleader','SERGEANT'],
	['rhsgref_cdf_b_para_medic','CORPORAL'],
	['rhsgref_cdf_b_para_grenadier_rpg','PRIVATE'],
	['rhsgref_cdf_b_para_grenadier_rpg','PRIVATE']
];

//Paratroops (AA Team)
_groupList pushBack [
	['rhsgref_cdf_b_para_squadleader','SERGEANT'],
	['rhsgref_cdf_b_para_rifleman','CORPORAL'],
	['rhsgref_cdf_b_para_specialist_aa','PRIVATE']
];

//Paratroops (Marksman)
_groupList pushBack [
	['rhsgref_cdf_b_para_marksman','CORPORAL'],
	['rhsgref_cdf_b_para_rifleman_lite','SERGEANT']
];

//Paratroops (Fireteam One)
_groupList pushBack [
	['rhsgref_cdf_b_para_rifleman_lite','SERGEANT'],
	['rhsgref_cdf_b_para_rifleman','PRIVATE'],
	['rhsgref_cdf_b_para_rifleman','CORPORAL'],
	['rhsgref_cdf_b_para_medic','PRIVATE']
];

//Paratroops (Fireteam Two)
_groupList pushBack [
	['rhsgref_cdf_b_para_squadleader','SERGEANT'],
	['rhsgref_cdf_b_para_rifleman','PRIVATE'],
	['rhsgref_cdf_b_para_rifleman','CORPORAL'],
	['rhsgref_cdf_b_para_autorifleman','PRIVATE']
];

//Paratroops (Engineers)
_groupList pushBack [
	['rhsgref_cdf_b_para_squadleader','SERGEANT'],
	['rhsgref_cdf_b_para_engineer','PRIVATE'],
	['rhsgref_cdf_b_para_engineer','CORPORAL']
];

//Paratroops (Squad)
_groupList pushBack [
	['rhsgref_cdf_b_para_squadleader','SERGEANT'],
	['rhsgref_cdf_b_para_rifleman','CORPORAL'],
	['rhsgref_cdf_b_para_rifleman_lite','CORPORAL'],
	['rhsgref_cdf_b_para_autorifleman','PRIVATE'],
	['rhsgref_cdf_b_para_medic','PRIVATE']
];


//Regulars (Marksman)
_groupList pushBack [
	['rhsgref_cdf_b_reg_marksman','CORPORAL'],
	['rhsgref_cdf_b_reg_rifleman_lite','SERGEANT']
];

//Regulars (Fireteam One)
_groupList pushBack [
	['rhsgref_cdf_b_reg_rifleman_lite','SERGEANT'],
	['rhsgref_cdf_b_reg_rifleman','CORPORAL'],
	['rhsgref_cdf_b_reg_rifleman_m70','PRIVATE'],
	['rhsgref_cdf_b_reg_machinegunner','PRIVATE']
];

//Regulars (Fireteam Two)
_groupList pushBack [
	['rhsgref_cdf_b_reg_rifleman_lite','SERGEANT'],
	['rhsgref_cdf_b_reg_rifleman_m70','CORPORAL'],
	['rhsgref_cdf_b_reg_medic','PRIVATE'],
	['rhsgref_cdf_b_reg_rifleman','PRIVATE']
];

//Regulars (Squad)
_groupList pushBack [
	['rhsgref_cdf_b_reg_squadleader','SERGEANT'],
	['rhsgref_cdf_b_reg_rifleman_m70','CORPORAL'],
	['rhsgref_cdf_b_reg_rifleman_m70','CORPORAL'],
	['rhsgref_cdf_b_reg_machinegunner','PRIVATE'],
	['rhsgref_cdf_b_reg_medic','PRIVATE'],
	['rhsgref_cdf_b_reg_grenadier_rpg','PRIVATE']
];

//Regulars (HQ)
_groupList pushBack [
	['rhsgref_cdf_b_reg_general','COLONEL'],
	['rhsgref_cdf_b_reg_officer','MAJOR'],
	['rhsgref_cdf_b_reg_squadleader','SERGEANT'],
	['rhsgref_cdf_b_reg_rifleman_lite','CORPORAL']
];

//Regulars (Engineers)
_groupList pushBack [
	['rhsgref_cdf_b_reg_squadleader','SERGEANT'],
	['rhsgref_cdf_b_reg_engineer','PRIVATE'],
	['rhsgref_cdf_b_reg_engineer','CORPORAL']
];

//Regulars (AA)
_groupList pushBack [
	['rhsgref_cdf_b_reg_squadleader','SERGEANT'],
	['rhsgref_cdf_b_reg_specialist_aa','CORPORAL'],
	['rhsgref_cdf_b_reg_rifleman_lite','PRIVATE']
];

//Regulars (Heavy AT)
_groupList pushBack [
	['rhsgref_cdf_b_reg_squadleader','SERGEANT'],
	['rhsgref_cdf_b_reg_grenadier_rpg','PRIVATE'],
	['rhsgref_cdf_b_reg_grenadier_rpg','PRIVATE']
];

(_groupList call BIS_fnc_selectRandom)
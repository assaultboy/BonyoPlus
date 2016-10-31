private ["_groupList"];

_groupList = [];

//Grenedier Team 
_groupList pushBack [ 
	['rhs_msv_emr_junior_sergeant','CORPORAL'],
	['rhs_msv_emr_grenadier_rpg','PRIVATE'],
	['rhs_msv_emr_strelok_rpg_assist','PRIVATE']
];

//Rifle Team
_groupList pushBack [ 
	['rhs_msv_emr_sergeant','SERGEANT'],
	['rhs_msv_emr_arifleman','PRIVATE'],
	['rhs_msv_emr_junior_sergeant','CORPORAL'],
	['rhs_msv_emr_rifleman','PRIVATE']
];

//Weapons Team
_groupList pushBack [ 
	['rhs_msv_emr_sergeant','SERGEANT'],
	['rhs_msv_emr_machinegunner','CORPORAL'],
	['rhs_msv_emr_machinegunner','CORPORAL'],
	['rhs_msv_emr_machinegunner_assistant','PRIVATE'],
	['rhs_msv_emr_machinegunner_assistant','PRIVATE']
];

//Marksman Team
_groupList pushBack [
	['rhs_msv_emr_marksman','PRIVATE'],
	['rhs_msv_emr_marksman','CORPORAL']
];

//Specialist Team
_groupList pushBack [ 
	['rhs_msv_emr_efreitor','CORPORAL'],
	['rhs_msv_emr_LAT','PRIVATE'],
	['rhs_msv_emr_medic','PRIVATE']
];

//SF Team
_groupList pushBack [ 
	['rhs_vdv_recon_rifleman_akms','LIEUTENANT'],
	['rhs_vdv_recon_rifleman_akms','SERGEANT'],
	['rhs_vdv_recon_rifleman_akms','SERGEANT']
];

//Scout Team
_groupList pushBack [ 
	['rhs_vdv_recon_marksman_asval','LIEUTENANT'],
	['rhs_vdv_recon_marksman_asval','LIEUTENANT']
];

//AT Team
_groupList pushBack [ 
	['rhs_msv_emr_sergeant','SERGEANT'],
	['rhs_msv_emr_at','CORPORAL'],
	['rhs_msv_emr_rifleman','PRIVATE'],
	['rhs_msv_emr_rifleman','PRIVATE']
];

//AA Team
_groupList pushBack [ 
        ['rhs_msv_emr_sergeant','SERGEANT'],
        ['rhs_msv_emr_aa','CORPORAL'],
        ['rhs_msv_emr_rifleman','PRIVATE'],
        ['rhs_msv_emr_rifleman','PRIVATE']
];

(_groupList call BIS_fnc_selectRandom)
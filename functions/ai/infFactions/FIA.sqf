private ["_groupList"];

_groupList = [];

//Rifle Team 
_groupList pushBack [ 
	['B_G_Soldier_TL_F','SERGEANT'], 
	['B_G_Soldier_F','PRIVATE'], 
	['B_G_Soldier_F','PRIVATE'], 
	['B_G_Soldier_F','PRIVATE']
]; 

//Weapons Team 
_groupList pushBack [ 
	['B_G_Soldier_SL_F','SERGEANT'], 
	['B_G_Soldier_LAT_F','PRIVATE'], 
	['B_G_Soldier_M_F','PRIVATE'], 
	['B_G_Soldier_AR_F','PRIVATE']
]; 

//AR Team 
_groupList pushBack [ 
	['B_G_Soldier_TL_F','SERGEANT'], 
	['B_G_Soldier_AR_F','PRIVATE'], 
	['B_G_Soldier_A_F','PRIVATE'], 
	['B_G_Soldier_AR_F','PRIVATE']
]; 

//Sniper Team 
_groupList pushBack [ 
	['B_G_Sharpshooter_F','LIEUTENANT'], 
	['B_G_Soldier_M_F','SERGEANT']
]; 

//Grenedier Team 
_groupList pushBack [ 
	['B_G_Soldier_SL_F','SERGEANT'], 
	['B_G_Soldier_GL_F','PRIVATE'], 
	['B_G_Soldier_GL_F','PRIVATE'], 
	['B_G_Soldier_lite_F','PRIVATE']
]; 

//Combat Engineer Team 
_groupList pushBack [ 
	['B_G_Soldier_TL_F','SERGEANT'], 
	['B_G_engineer_F','PRIVATE'], 
	['B_G_Soldier_exp_F','PRIVATE'], 
	['B_G_Soldier_lite_F','PRIVATE']
]; 

//Medical Team 
_groupList pushBack [ 
	['B_G_Soldier_TL_F','SERGEANT'], 
	['B_G_medic_F','PRIVATE'], 
	['B_G_medic_F','PRIVATE'], 
	['B_G_Soldier_lite_F','PRIVATE']
];

(_groupList call BIS_fnc_selectRandom)
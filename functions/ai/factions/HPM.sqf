private ["_groupList"];

_groupList = [];

//Rifle Team 
_groupList pushBack [ 
	['O_MU_militia_TL_F','SERGEANT'], 
	['O_MU_militia_R_F','PRIVATE'], 
	['O_MU_militia_R_F','PRIVATE'], 
	['O_MU_militia_R_F','PRIVATE']
]; 

//AR Team 
_groupList pushBack [ 
	['O_MU_militia_SL_F','SERGEANT'], 
	['O_MU_militia_AR_F','CORPORAL'], 
	['O_MU_militia_A_F','PRIVATE'], 
	['O_MU_militia_RL_F','PRIVATE']
]; 

//Heavy AR Team 
_groupList pushBack [ 
	['O_MU_militia_SL_F','SERGEANT'], 
	['O_MU_militia_MG2_F','CORPORAL'], 
	['O_MU_militia_AMG2_F','PRIVATE']
]; 

//Grenedier Team 
_groupList pushBack [ 
	['O_MU_militia_TL_F','SERGEANT'], 
	['O_MU_militia_GL_F','PRIVATE'], 
	['O_MU_militia_GL_F','PRIVATE'], 
	['O_MU_militia_RL_F','PRIVATE']
]; 

//Sniper Team 
_groupList pushBack [ 
	['O_MU_militia_sniper_F','LIEUTENANT'], 
	['O_MU_militia_M_F','SERGEANT']
]; 

//Engineer Team 
_groupList pushBack [ 
	['O_MU_militia_SL_F','SERGEANT'], 
	['O_MU_militia_engineer_F','PRIVATE'], 
	['O_MU_militia_engineer_F','PRIVATE'], 
	['O_MU_militia_R_F','PRIVATE']
]; 

//Medical Team 
_groupList pushBack [ 
	['O_MU_militia_RL_F','CORPORAL'], 
	['O_MU_militia_medic_F','PRIVATE'], 
	['O_MU_militia_medic_F','PRIVATE']
]; 

//Marksman Team 
_groupList pushBack [ 
	['O_MU_militia_TL_F','SERGEANT'], 
	['O_MU_militia_M_F','CORPORAL'], 
	['O_MU_militia_RL_F','PRIVATE'], 
	['O_MU_militia_RL_F','PRIVATE']
]; 

//AA Team 
_groupList pushBack [ 
	['O_MU_militia_TL_F','SERGEANT'], 
	['O_MU_militia_AA_F','CORPORAL'], 
	['O_MU_militia_RL_F','PRIVATE'], 
	['O_MU_militia_RL_F','PRIVATE']
]; 

//AT Team 
_groupList pushBack [ 
	['O_MU_militia_TL_F','SERGEANT'], 
	['O_MU_militia_AT_F','CORPORAL'], 
	['O_MU_militia_RL_F','PRIVATE'], 
	['O_MU_militia_RL_F','PRIVATE']
]; 

(_groupList call BIS_fnc_selectRandom)
private ["_groupList"];

_groupList = [];

//Rifle Team 
_groupList pushBack [ 
	['O_MU_islam_TL_F','SERGEANT'], 
	['O_MU_islam_R1_F','PRIVATE'], 
	['O_MU_islam_R1_F','PRIVATE'], 
	['O_MU_islam_R1_F','PRIVATE']
];

//Diverse Team 
_groupList pushBack [ 
	['O_MU_islam_SL_F','SERGEANT'], 
	['O_MU_islam_A_F','PRIVATE'], 
	['O_MU_islam_AR_F','PRIVATE'], 
	['O_MU_islam_medic_F','PRIVATE']
];

//High Speed Team 
_groupList pushBack [ 
	['O_MU_islam_R2_F','SERGEANT'],
	['O_MU_islam_AR_F','PRIVATE'],
	['O_MU_islam_GL_F','PRIVATE'],
	['O_MU_islam_R2_F','PRIVATE']
];

//Explosives Team 
_groupList pushBack [ 
	['O_MU_islam_TL_F','SERGEANT'],
	['O_MU_islam_engineer_F','PRIVATE'],
	['O_MU_islam_engineer_F','PRIVATE']
];

//AT Team 
_groupList pushBack [ 
	['O_MU_islam_SL_F','SERGEANT'],
	['O_MU_islam_AT_F','CORPORAL'],
	['O_MU_islam_R1_F','PRIVATE'],
	['O_MU_islam_R1_F','PRIVATE']
];

//AA Team 
_groupList pushBack [ 
	['O_MU_islam_SL_F','SERGEANT'],
	['O_MU_islam_AA_F','CORPORAL'],
	['O_MU_islam_R1_F','PRIVATE'],
	['O_MU_islam_R1_F','PRIVATE']
];

//Marksman Team 
_groupList pushBack [ 
	['O_MU_islam_M_F','SERGEANT'],
	['O_MU_islam_M_F','CORPORAL']
];

(_groupList call BIS_fnc_selectRandom)
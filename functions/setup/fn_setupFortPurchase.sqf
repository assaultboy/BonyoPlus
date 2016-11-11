/*
	BONYO_fnc_setupFortPurchase
	
	DESCRIPTION:
		This function will add various actions to the given object
		
	PARAMETERS:
		OBJECT:
			The fortification shop object
			
	RETURNS
		nothing
		
	EXAMPLE
		_obj call BONYO_fnc_setupFortPurchase
*/

_this allowDamage false;

_this addAction ["<t color='#FF0000'>--Fortifications------------------------------</t>", "", nil, 6, false, true];

_this addAction ["Buy Sandbag Wall $25", {["Land_BagFence_Long_F", 25] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Sandbag Wall (Round) $30", {["Land_BagFence_Round_F", 30] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Sandbag Wall (Corner) $15", {["Land_BagFence_Corner_F", 15] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Sandbag Wall (Tiny) $10", {["Land_BagFence_End_F", 10] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy H-Barrier $50", {["Land_HBarrier_3_F", 50] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy H-Barrier (Single) $20", {["Land_HBarrier_1_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Ramp $5", {["Land_Obstacle_Ramp_F", 5] call BONYO_fnc_buyFort}, nil, 6, false, true];
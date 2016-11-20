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

_this addAction ["<t color='#FF0000'>--Lights--------------------------------------</t>", "", nil, 6, false, true];

_this addAction ["Buy Camping Light $15", {["Land_Camping_Light_F", 15] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Single Flood Light $25", {["Land_PortableLight_single_F", 25] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Double Flood Light $35", {["Land_PortableLight_double_F", 35] call BONYO_fnc_buyFort}, nil, 6, false, true];

_this addAction ["<t color='#FF0000'>--Bunkers---------------------------</t>", "", nil, 6, false, true];

_this addAction ["Buy Small Bunker $100", {["Land_BagBunker_Small_F", 100] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Large Bunker $500", {["Land_BagBunker_Large_F", 500] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Tower Bunker $1000", {["Land_BagBunker_Tower_F", 1000] call BONYO_fnc_buyFort}, nil, 6, false, true];

_this addAction ["<t color='#FF0000'>--Containers------------------------</t>", "", nil, 6, false, true];

_this addAction ["Buy Metal Generic $20", {["Land_MetalCase_01_large_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Plastic Generic $20", {["Land_PlasticCase_01_large_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Wood Generic $20", {["Land_WoodenCrate_01_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Ammo Box $20", {["Box_NATO_Ammo_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Explosives Box $20", {["Box_NATO_AmmoOrd_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Weapons Box $20", {["Box_NATO_Wps_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Special Weapons Box $20", {["Box_NATO_WpsSpecial_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Support Box $20", {["Box_NATO_Support_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
_this addAction ["Buy Launcher Box $20", {["Box_NATO_WpsLaunch_F", 20] call BONYO_fnc_buyFort}, nil, 6, false, true];
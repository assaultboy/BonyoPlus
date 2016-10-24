private ["_rifleman",
	"_riflemanAT",

	"_teamleader",
	"_squadleader",

	"_ar",
	"_aar",

	"_medic",
	"_marksman",
	"_heavyar",

	"_officer",
	"_pilot",
	
	"_sniper",
	"_spotter"];

//Choose a random faction to load
switch ([1,2] call BIS_fnc_selectRandom) do {
	case 1: {
		#include "factions\NATO.sqf"
	};
	
	case 2: {
		#include "factions\CSAT.sqf"
	};

};
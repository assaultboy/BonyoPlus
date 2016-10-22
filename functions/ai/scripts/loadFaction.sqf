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
	"_pilot"];

//Choose a random faction to load
switch ([1] call BIS_fnc_selectRandom) do {
	case 1: {
		#include "factions\NATO.sqf"
	};

};
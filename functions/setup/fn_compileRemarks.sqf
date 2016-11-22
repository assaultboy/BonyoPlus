/*
	BONYO_fnc_compileRemarks
	
	DESCRIPTION:
		This function will compile all the remarks into the correct lists automatically
		This function must be executed on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_compileRemarks;
*/

if (!isServer) exitWith {true};

BONYO_roundCompleteRemarks = ["Go loot like it's a riot",
"Free stuff",
"Raw Capitalism",
"Ain't no party like a loot party",
"Do you like hurting people?",
"Fick dich Grenner"];

BONYO_roundFailRemarks = ["You suck",
"What would uncle Tutty think?",
"Vuk is not impressed",
"Have you considered quitting?",
"You're supposed to win",
"How quickly the tides turn"];

BONYO_supplyDropRemarks = ["Delivery for %1",
"Supply Drop for %1",
"Someone Loves %1",
"Santa has a present for %1",
"Care Package for %1",
"Have a gift, %1",
"It's bonus season! At least for %1",
"Eyes to the sky, %1"]
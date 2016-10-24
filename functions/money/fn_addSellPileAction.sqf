/*
	BONYO_fnc_addSellPileAction
	
	DESCRIPTION:
		This function will add the sell pile action and variable to the given object
		This function should only be used with local objects
		
	PARAMETERS:
		0 OBJECT:
			The object to add the action to
			
	RETURNS
		nothing
		
	EXAMPLE
		[_obj] call BONYO_fnc_addSellPileAction
*/

//Local object only
if (!local (_this select 0)) exitWith {true};

(_this select 0) addAction ["Sell", {(_this select 0) call BONYO_fnc_sellPile}, nil, 6, false, true];
(_this select 0) setVariable ["BONYO_sellPileAction", true, true];
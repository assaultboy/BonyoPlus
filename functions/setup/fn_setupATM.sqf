/*
	BONYO_fnc_setupATM
	
	DESCRIPTION:
		This function will add various actions to the given object
		
	PARAMETERS:
		OBJECT:
			The ATM Object
			
	RETURNS
		nothing
		
	EXAMPLE
		_obj call BONYO_fnc_setupATM
*/

//Make it invincible
_this allowDamage false;

_this addAction ["Check Balance", {
	hint format ["Personal Balance: $%1\nCommunanal Balance: %2", profileNamespace getVariable ["BONYOPLUS_points", 0], "N/A"];
}];
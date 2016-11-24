/*
	BONYO_fnc_setMoney
	
	DESCRIPTION:
		This function sets the local players money to the given amount
		This function must be run on a client
		
	PARAMETERS:
		Amount
			The amount of money to set
			
		Show Hint
			if true a hint will be shown informing the player their money was set
			
	RETURNS
		nothing
		
	EXAMPLE
		[50, true] call BONYO_fnc_setMoney
*/

//Only clients
if (!hasInterface) exitWith {true};

private ["_amount","_showHint"];

_amount = (_this select 0);
_showHint = (_this select 1);

//Set the variable
["points", _amount] call BONYO_fnc_saveStat;

//Show our hint if we want
if (_showHint) then {
	hint format ["Money set to $%1",_amount];
};
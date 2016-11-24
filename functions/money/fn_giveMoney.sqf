/*
	BONYO_fnc_giveMoney
	
	DESCRIPTION:
		This function gives the local player the given amount of money
		This function must be run on a client
		
	PARAMETERS:
		Amount
			The amount of money to be given
			
		Show Hint
			if true a hint will be shown informing the player how much they picked up
			
	RETURNS
		nothing
		
	EXAMPLE
		[50, true] call BONYO_fnc_giveMoney
*/

//Only clients
if (!hasInterface) exitWith {true};

private ["_amount","_showHint","_personalBalance"];

_amount = (_this select 0);
_showHint = (_this select 1);

//Get our balance
["points", _amount] call BONYO_fnc_addStat;

//Show our hint if we want
if (_showHint) then {
	hint format ["Picked up $%1",_amount];
};
/*
	BONYO_fnc_purchase
	
	DESCRIPTION:
		This function will attempt to take the given amout from the local players bank, it will return bool of success
		This function must be called on a client
		
	PARAMETERS:
		Amount
			The cost of the purchase
			
	RETURNS
		Success
			Boolean of whether is was a success
		
	EXAMPLE
		50 call BONYO_fnc_purchase
*/

//Only clients
if (!hasInterface) exitWith {true};

private ["_balance", "_ret"];

//Retrieve our balance and determine if we have enough
_balance = (["points", 0] call BONYO_fnc_loadStat);

if (_balance >= _this) then {
	_ret = true;
	
	["points", 0-(_this)] call BONYO_fnc_addStat;
} else {
	_ret = false;
};

//Return our success
_ret;
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
	hint format ["Personal Balance: $%1\nCommunanal Balance: %2", "points" call BONYO_fnc_loadStat, "N/A"];
}, nil, 6, false, true];

//Add our sell option
_this addAction ["Sell Items", {
	private ["_box"];
	
	_box = ([] call BONYO_fnc_openLocalContainer);
	
	//Remove the default event handler so we can add our own
	_box removeAllEventHandlers "ContainerClosed";
	
	//When we close it we are going to get its contents and return the amount it's worth
	_box addeventHandler ["ContainerClosed", {
		(_this select 0) call BONYO_fnc_sellCargo;
		
		deleteVehicle (_this select 0);
	}];
}, nil, 6, false, true];
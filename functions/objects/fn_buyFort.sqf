/*
	BONYO_fnc_buyFort
	
	DESCRIPTION:
		This function will attempt to purchase the given object as a fortification for the local player
		This function must be called on a client
		
	PARAMETERS:
		Class
			The class of the object to attempt to purchase
		Cost
			The amount of money it should cost
			
	RETURNS
		Nothing
		
	EXAMPLE
		[_class, 50] call BONYO_fnc_buyFort
*/

//Only run on the client
if (!hasInterface) exitWith {true};

if ((_this select 1) call BONYO_fnc_purchase) then {
	private ["_object"];
	
	_object = ((_this select 0) createVehicle (getMarkerPos "purchase_point"));
	_object call BONYO_fnc_makeMoveable;
	
	//Clear the cargo of the object
	_object call BONYO_fnc_clearCargo;
	
	hint "Fortification Purchased!";

} else {
	hint "You are not able to afford this!";
};
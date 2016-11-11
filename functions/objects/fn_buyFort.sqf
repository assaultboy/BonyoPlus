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
	private ["_placeholder"];
	
	_placeholder = ((_this select 0) createVehicleLocal (getMarkerPos "purchase_point"));
	_placeHolder call BONYO_fnc_makeMoveable;
	
	_placeholder setObjectTexture [0,'#(argb,8,8,3)color(0,1,0,1)'];
	_placeholder setObjectTexture [1,'#(argb,8,8,3)color(0,1,0,1)'];
	_placeholder setObjectTexture [2,'#(argb,8,8,3)color(0,1,0,1)'];
	_placeholder setObjectTexture [3,'#(argb,8,8,3)color(0,1,0,1)'];
	
	hint "Fortification Purchased!";

} else {
	hint "You are not able to afford this!";
};
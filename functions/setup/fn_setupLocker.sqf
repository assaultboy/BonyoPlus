/*
	BONYO_fnc_setupLocker
	
	DESCRIPTION:
		This function adds the locker event handler to the given object
		This function has a local effect and must be executed on every machine
		
	PARAMETERS:
		Object
			The object (Assumed to have an inventory) to add the EH to
			
	RETURNS
		nothing
		
	EXAMPLE
		_box call BONYO_fnc_setupLocker
*/

_this enableSimulation false;
_this allowDamage false;

_this addEventHandler ["ContainerOpened", {
	private ["_box","_player","_personalBox"];
	
	_box = (_this select 0);
	_player = (_this select 1);
	
	_personalBox = "B_Truck_01_box_F" createVehicleLocal [0,0,5000];
	_personalBox allowDamage false;
	_personalBox hideObject true;
	
	_personalBox attachTo [_player, [0,0,0]];
	
	[_personalBox, profileNamespace getVariable ["BONYOPLUS_locker", [[], [], [], []]]] call BONYO_fnc_setCargo;
	
	_personalBox addeventHandler ["ContainerClosed", {
		profileNameSpace setvariable ["BONYOPLUS_locker", (_this select 0) call BONYO_fnc_getCargo];
		saveProfileNamespace;
		
		deleteVehicle (_this select 0);
	}];
	
	_player action ["gear", _personalBox];
}];
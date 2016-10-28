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
	private ["_box"];
	
	//Create a local container so no one else can mess with our stuff
	_box = ([] call BONYO_fnc_openLocalContainer);
	
	//Populate it with our personal locker
	[_box, profileNamespace getVariable ["BONYOPLUS_locker", [[], [], [], []]]] call BONYO_fnc_setCargo;
	
	//When we close it we are going to save its contents and delete it
	_box addeventHandler ["ContainerClosed", {
		profileNameSpace setvariable ["BONYOPLUS_locker", (_this select 0) call BONYO_fnc_getCargo];
		saveProfileNamespace;
		
		deleteVehicle (_this select 0);
	}];
}];
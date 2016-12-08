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

//Add our locker help action
_this addAction ["<t color='#00ff00'>What is this?</t>", {
	"Locker" hintC [
		parseText "Clink the link below to open a webpage that will explain the personal gear locker",
		parseText "<a underline='true' color='#9b9bff' href='https://github.com/assaultboy/BonyoPlus/wiki/Locker'>Help&#160;Link</a>"
	];
	
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];
	
//We don't predefine this req because we only use it once
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];

//Add our open event handler
_this addEventHandler ["ContainerOpened", {
	private ["_box"];
	
	//Create a local container so no one else can mess with our stuff
	_box = ([] call BONYO_fnc_openLocalContainer);
	
	//Populate it with our personal locker
	[_box, profileNamespace getVariable ["BONYOPLUS_locker", [[], [], [], []]]] call BONYO_fnc_setCargo;
	
	//Remove our default event handler so we can use our own
	_box removeAllEventHandlers "ContainerClosed";
	
	//When we close it we are going to save its contents and delete it
	_box addeventHandler ["ContainerClosed", {
		profileNameSpace setvariable ["BONYOPLUS_locker", (_this select 0) call BONYO_fnc_getCargo];
		saveProfileNamespace;
		
		deleteVehicle (_this select 0);
	}];
}];
/*
	BONYO_fnc_setupRoleControl
	
	DESCRIPTION:
		This function will add various control actions to the given object
		
	PARAMETERS:
		OBJECT:
			The role control object
			
	RETURNS
		nothing
		
	EXAMPLE
		_obj call BONYO_fnc_setupRoleControl
*/

//Don't kill the object pls
_this allowDamage false;

//Save some space
private ["_req_idle_noRole"];
_req_idle_noRole = "(([] call BONYO_fnc_getMode) == 'idle') && ((player call BONYO_fnc_getRole) == '')";

//Add our role description Button
_this addAction ["<t color='#ff0000'>Role Descriptions</t>", {
	"Roles" hintC [
		parseText "Clink the link below to open a webpage that will describe each roles description and abilities",
		parseText "<a underline='true' color='#9b9bff' href='https://github.com/assaultboy/BonyoPlus/wiki/Roles'>Roles&#160;Link</a>"
	];
	
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];
	
//We don't predefine this req because we only use it once
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];


//Roles Selection
_this addAction ["<t color='#FF0000'>--Role Select---------------------------------</t>", "", nil, 6, false, true, "", _req_idle_noRole];

_this addAction ["Master Builder", {
	private ["_roleFiller"];
	
	//Check to make sure the role is not already filled
	_roleFiller = ("masterbuilder" call BONYO_fnc_getRoleFiller);
	
	if (isNull _roleFiller) then {
		[player, "masterbuilder"] remoteExec ["BONYO_fnc_setRole", 2];
		(format ["%1 has been made the Master Builder", name player]) remoteExec ["hint", 0];
		
	} else {
		hint format ["%1 is already the Master Builder!", name _roleFiller];
	};
}, nil, 6, false, true, "", _req_idle_noRole];
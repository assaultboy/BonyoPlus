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

//Add our role description Button
_this addAction ["<t color='#ff0000'>Role Descriptions</t>", {
	"Roles" hintC [
		parseText "Clink the link below to open a webpage that will describe each roles description and abilities",
		parseText "<a underline='true' color='#9b9bff' href='https://github.com/assaultboy/BonyoPlus/releases'>Roles&#160;Link</a>"
	];
	
	hintC_arr_EH = findDisplay 72 displayAddEventHandler ["unload", {
		0 = _this spawn {
			_this select 0 displayRemoveEventHandler ["unload", hintC_arr_EH];
			hintSilent "";
		};
	}];
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];

_this addAction ["<t color='#FF0000'>--Role Select---------------------------------</t>", "", nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];

_this addAction ["Master Builder", {
	
}, nil, 6, false, true, "", "([] call BONYO_fnc_getMode) == 'idle'"];
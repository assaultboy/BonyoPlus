/*
	BONYO_fnc_makeMoveable
	
	DESCRIPTION:
		This function makes the given object moveable by the local player
		This function must be called on a client
		The given object must be local to the client
		
	PARAMETERS:
		Object
			The object that will be made moveable
			
	RETURNS
		nothing
		
	EXAMPLE
		 _object call BONYO_fnc_makeMoveable
*/

//Clients only
if (!hasInterface) exitWith {true};

//Local Objects Only
if (!local _this) exitWith {true};

//Add the move action to the object
_nil = _this addAction ["Move",{
	//Clear our object of actions so it's cleaner for the player to use the menu
	removeAllActions (_this select 0);
	
	//Attach the object to the player and save our offset
	(_this select 0) attachTo [player, [0,2,0.5]];
	player setVariable ["BONYO_currentFortData", [_this select 0, [0,2,0.5]]];
	
	//We add save the actions so we can delete them later
	player setVariable ["BONYO_currentFortActions", [
		//Short Actions
		player addAction ["Move Up", {
			0.1 call BONYO_fnc_moveAttachedFort;
		}, nil, 6],
		
		player addAction ["Move Down", {
			-0.1 call BONYO_fnc_moveAttachedFort;
		}, nil, 6],
		
		//Long actions
		player addAction ["<t color='#FF0000'>--------------------------------</t>", "", nil, 6],
		
		player addAction ["Move Up Long", {
			1 call BONYO_fnc_moveAttachedFort;
		}, nil, 6],
		
		player addAction ["Move Down Long", {
			-1 call BONYO_fnc_moveAttachedFort;
		}, nil, 6],
		
		//Our Place Action
		player addAction ["<t color='#FF0000'>--------------------------------</t>", "", nil, 6],
		
		player addAction ["Place Object", {
			private ["_object", "_pos", "_class", "_rot", "_newObject"];
			
			_object = ((player getVariable ["BONYO_currentFortData", [objNull, [0,0,0]]]) select 0);
			
			//Remove all the fortification actions from the player
			{
				player removeAction _x;
			} forEach (player getVariable ["BONYO_currentFortActions", []]);
			
			//Detach our object and save its position, class, and rotation
			detach _object;
			_pos = getPosATL _object;
			_class = typeOf _object;
			_rot = direction _object;
			
			//Delete the object because it is just a local placeholder
			deleteVehicle _object;
			
			//Create a new global object and place it where it should be
			_newObject = (_class createVehicle _pos);
			_newObject setDir _rot;
			_newObject setPosATL _pos;
			
			//Set our variables to null n shit
			player setVariable ["BONYO_currentFortData", [objNull, [0,0,0]]];
		}, nil, 6]
	]];
	
}, nil, 6, true, true, "", "isNull ((player getVariable ['BONYO_currentFortData', [objNull, [0,0,0]]]) select 0)"];
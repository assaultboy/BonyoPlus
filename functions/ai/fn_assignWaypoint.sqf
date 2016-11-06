/*
	BONYO_fnc_assignWaypoint
	
	DESCRIPTION:
		This function will add a hold waypoint to the given group at the location of a random player
		This function must be called on the server
		
	PARAMETERS:
		Group
			Group to assign the waypoint to
			
	RETURNS
		Nothing
		
	EXAMPLE
		 _grp call BONYO_fnc_assignWaypoint
*/

//Server only
if (!isServer) exitWith {true};

_this addWaypoint [getPos (allPlayers call BIS_fnc_selectRandom), 50];
[_this, 1] setWaypointType "HOLD";
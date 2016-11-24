/*
	BONYO_fnc_compileStats
	
	DESCRIPTION:
		This function will compile all the stats into the correct index
		This function must be executed on the server
		
	PARAMETERS:
		Nothing
			
	RETURNS
		Nothing
		
	EXAMPLE
		[] call BONYO_fnc_compileStats;
*/

if (!isServer) exitWith {true};

/*
Stats Documentation

0 (versions) :
	[Earliest Played Version (Number), Latest Played Version (Number)]
	
1 (points) :
	Personal Point Balance (Number)
	
2 (lifetimeRoundCompletes) :
	Rounds Completed Over Lifetime (Number)
	
3 (lifetimeSupplyDrops) :
	Number of supply drops opened (Number)
	
4 (highestRound) :
	Highest Round Achieved (Number)
	
5 (lifetimeRoundFails) :
	Number of rounds failed over lifetime (Number)
*/

BONYO_statsArray = ["versions",
"points",
"lifetimeRoundCompletes",
"lifetimeSupplyDrops",
"highestRound",
"lifetimeRoundFails"];
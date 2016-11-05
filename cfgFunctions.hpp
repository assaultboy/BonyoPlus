class CfgFunctions
{
	class BONYO
	{
		class gear
		{
			class setPlayerSpawnGear {};
			class getCargo {};
			class setCargo {};
			class resetLocker {};
			class openLocalContainer {};
		};
		
		class misc
		{
			class print {};
			class syncVariables {};
			class requestSync {};
			class cleanup {};
			
			class becomeDog {};
		};
		
		class spectator
		{
			class enterSpectator {};
			class exitSpectator {};
		};
		
		class round
		{
			class startRound {};
			class endRound {};
		};
		
		class ai
		{
			class spawnInfGroup {};
			class spawnVicGroup {};
			
			class spawnUnit {};
			class spawnWave {};
			
			class debugGroup {};
		};
		
		class money
		{
			class sellCargo	{};
			class giveMoney {};
			class setMoney {};
		};
		
		class setup
		{
			class setupRoundControl {};
			class setupLocker {};
			
			class compileMarkerLists {};
			class compileRemarks {};
			class compileFactions {};
		};
	};
};
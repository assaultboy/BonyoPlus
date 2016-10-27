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
		};
		
		class misc
		{
			class print {};
			class syncVariables {};
			class clearCorpses {};
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
			class spawnUnit {};
			class spawnWave {};
			
			class debugGroup {};
		};
		
		class money
		{
			class addSellPileAction {};
			class sellPile {};
			class giveMoney {};
			class setMoney {};
		};
		
		class setup
		{
			class setupSellArea {};
			class setupRoundControl {};
			class setupLocker {};
			
			class compileMarkerLists {};
			class compileRemarks {};
			class compileFactions {};
		};
	};
};
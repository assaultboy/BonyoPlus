class CfgFunctions
{
	class BONYO
	{
		class gear
		{
			class setPlayerSpawnGear {};
			class getCargo {};
			class setCargo {};
			class clearCargo {};
			class resetLocker {};
			class openLocalContainer {};
		};
		
		class misc
		{
			class print {};
			class cleanup {};
			
			class setMode {};
			class getMode {};
			
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
			class setRound {};
			class getRound {};
		};
		
		class ai
		{
			class spawnInfGroup {};
			class spawnVicGroup {};
			
			class spawnUnit {};
			class spawnWave {};
			
			class spawnTrackers {};
			
			class debugGroup {};
			class assignWaypoint {};
		};
		
		class money
		{
			class valueCargo {};
			class giveMoney {};
			class setMoney {};
			class purchase {};
		};
		
		class setup
		{
			class setupRoundControl {};
			class setupLocker {};
			class setupATM {};
			class setupFortPurchase {};
			class setupRoleControl {};
			
			class compileMarkerLists {};
			class compileRemarks {};
			class compileFactions {};
			class compileStats {};
			class compileRoles {};
		};
		
		class objects
		{
			class makeMoveable {};
			class moveAttachedFort {};
			class buyFort {};
			class collision {};
			class modFort {};
		};
		
		class supplydrops
		{
			class spawnSupplyDrop {};
			class addSupplyDropAction {};
			class spawnSupplyDropReward {}
			class calculateSupplyDrops {};
		};
		
		class stats
		{
			class loadStat {};
			class saveStat {};
			
			class addStat {};
			
			class handleRoundEndStats {};
		};
		
		class roles
		{
			class setRole {};
			class getRole {};
			class getRoleFiller {};
			class releaseRole {};
			class giveRolePerks {};
			class removeRolePerks {};
		};
	};
};
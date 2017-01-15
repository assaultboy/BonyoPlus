/*
	BONYO_fnc_spawnSupplyDropReward
	
	DESCRIPTION:
		This function will give the local player a random reward
		This function must be called on a client
		
	PARAMETERS:
		Nothing
			
	RETURNS
		nothing
		
	EXAMPLE
		[] call BONYO_fnc_spawnSupplyDropReward
*/

//Only on clients
if (!hasInterface) exitWith {true};

private ["_rewards","_local_createBox"];

["lifetimeSupplyDrops", 1] call BONYO_fnc_addStat;

//We define our own function to make life easier and get out of a schedualed environment bug
_local_createBox = {
	private ["_box"];

	//Create the box and hide it
	_box = "B_Truck_01_box_F" createVehicleLocal [0,0,5000];
	_box allowDamage false;
	_box hideObject true;

	//Attach it to the player
	_box attachTo [player, [0,0,0]];

	//We can't use our clearCargo function because the box is local
	clearItemCargo _box;
	clearWeaponCargo _box;
	clearMagazineCargo _box;
	clearBackpackCargo _box;

	_box setVariable ["BONYO_clearOnCleanup", false];

	//Add our event handler so it deletes automatically
	_box addeventHandler ["ContainerClosed", {
		deleteVehicle (_this select 0);
	}];

	//Return our box
	_box;
};

_rewards = [{
	[50, true] call BONYO_fnc_giveMoney;
},
{
	[75, true] call BONYO_fnc_giveMoney;
},
{
	[100, true] call BONYO_fnc_giveMoney;
},
{
	[150, true] call BONYO_fnc_giveMoney;
},
{
	[200, true] call BONYO_fnc_giveMoney;
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["H_HelmetO_ViperSP_ghex_F", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["HandGrenade", 50];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addBackpackCargo ["ACE_TacticalLadder_Pack", 1];
	
	player action ["gear", _box];
}];

[] call (_rewards call BIS_fnc_selectRandom);
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
	
	_box addWeaponCargo ["rhs_weap_m32", 1];
	_box addMagazineCargo ["rhsusf_mag_6Rnd_M441_HE", 3];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_ak74m", 1];
	_box addMagazineCargo ["rhs_30Rnd_545x39_AK", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_akm", 1];
	_box addMagazineCargo ["rhs_30Rnd_762x39mm", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_pp2000_folded", 1];
	_box addMagazineCargo ["rhs_mag_9x19mm_7n21_20", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["hlc_rifle_psg1", 1];
	_box addMagazineCargo ["hlc_20rnd_762x51_b_G3", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["hlc_rifle_G36C", 1];
	_box addMagazineCargo ["hlc_30rnd_556x45_EPR_G36", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_M107", 1];
	_box addMagazineCargo ["rhsusf_mag_10Rnd_STD_50BMG_M33", 5];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_m4a1_blockII_KAC_wd", 1];
	_box addMagazineCargo ["rhs_mag_30Rnd_556x45_Mk318_Stanag", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_sr25_ec_wd", 1];
	_box addMagazineCargo ["rhsusf_20Rnd_762x51_m118_special_Mag", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhsusf_weap_MP7A1_winter", 1];
	_box addMagazineCargo ["rhsusf_mag_40Rnd_46x30_FMJ", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["srifle_DMR_06_camo_F", 1];
	_box addMagazineCargo ["20Rnd_762x51_Mag", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["rhs_weap_m24sws_ghillie", 1];
	_box addMagazineCargo ["rhsusf_5Rnd_762x51_m118_special_Mag", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["srifle_DMR_03_woodland_F", 1];
	_box addMagazineCargo ["20Rnd_762x51_Mag", 10];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addWeaponCargo ["srifle_DMR_03_woodland_F", 1];
	_box addMagazineCargo ["20Rnd_762x51_Mag", 10];
	
	player action ["gear", _box];
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
	
	_box addItemCargo ["H_Titan_Helmet_O", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["LOP_H_Ushanka", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["LOP_H_Policeman_cap", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["ACE_Banana", 50];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["H_Beret_02", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["H_CrewHelmetHeli_B", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["rhsusf_protech_helmet", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["Specter_MBSS_WTF", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["gpn18", 1];
	
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
	
	_box addItemCargo ["rhsusf_Rhino", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addItemCargo ["U_bombsuit", 1];
	_box addItemCargo ["H_Bombsuit_Helmet", 1];
	
	player action ["gear", _box];
},
{
	private ["_box"];
	
	_box = [] call _local_createBox;
	
	_box addBackpackCargo ["ACE_TacticalLadder_Pack", 1];
	
	player action ["gear", _box];
}];

[] call (_rewards call BIS_fnc_selectRandom);
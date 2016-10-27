/*
	BONYO_fnc_resetLocker
	
	DESCRIPTION:
		This function resets the locker of the local player
		
	PARAMETERS:
		BOOL
			Should a hint be shown to the player
			
	RETURNS
		Nothing
		
	EXAMPLE
		true call BONYO_fnc_resetLocker
*/

profileNameSpace setvariable ["BONYOPLUS_locker", [[],[],[],[]]];
saveProfileNamespace;

if (_this) then {
	hint "Your locker has been reset";
};
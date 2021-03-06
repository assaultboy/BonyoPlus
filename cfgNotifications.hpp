class CfgNotifications
{
	class AwayMission
	{
		title = "NEW AWAY MISSION";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
		description = "%1";
		priority = 9;
	};
	
	
	class WaveStart
	{
		title = "WAVE STARTED";
		iconText = "%1";
		description = "Prepare for the onslaught";
		color[] = {1,1,1,1};
		priority = 10;
	};
	
	class WaveComplete
	{
		title = "WAVE COMPLETED";
		iconText = "%1";
		description = "<t size='0.75'>%2</t>";
		color[] = {1,1,1,1};
		priority = 10;
	};
	class WaveFail
	{
		title = "WAVE FAILED";
		iconText = "%1";
		description = "<t size='0.75'>%2</t>";
		color[] = {1,1,1,1};
		priority = 10;
	};
	
	class SupplyDrop
	{
		title = "SUPPLY DROP";
		iconPicture = "\A3\ui_f\data\map\mapcontrol\taskIcon_ca.paa";
		description = "<t size='0.75'>%1</t>";
		color[] = {1,1,1,1};
		priority = 10;
	};
};
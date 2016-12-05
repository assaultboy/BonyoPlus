class CfgCommunicationMenu
{
    class modFort
    {
        text = "Modify Fortification"; // Text displayed in the menu and in a notification
        submenu = ""; // Submenu opened upon activation (expression is ignored when submenu is not empty.)
        expression = "[] call BONYO_fnc_modFort;"; // Code executed upon activation
        icon = "\a3\Ui_f\data\GUI\Cfg\CommunicationMenu\defend_ca.paa"; // Icon displayed permanently next to the command menu
        cursor = "\a3\Ui_f\data\IGUI\Cfg\Cursors\iconCursorSupport_ca.paa"; // Custom cursor displayed when the item is selected
        removeAfterExpressionCall = 0; // 1 to remove the item after calling
    };
};
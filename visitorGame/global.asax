<SCRIPT LANGUAGE="C#" runat="Server">



// application begins
void Application_Start(Object s, EventArgs e)
{
	Application["lastVisitor"] = "Unknown";

    string str = "1.11.0";
    ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
    {
        Path = "~/Scripts/jquery-" + str + ".min.js",
        DebugPath = "~/Scripts/jquery-" + str + ".js",
        CdnPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + str + ".min.js",
        CdnDebugPath = "http://ajax.aspnetcdn.com/ajax/jQuery/jquery-" + str + ".js",
        CdnSupportsSecureConnection = true,
        LoadSuccessExpression = "window.jQuery"
    });

}

// browser's first visit to the page, (session starts)
void Session_Start(Object s, EventArgs e)
{
		Session["visitorName"]="Honored Guest";
}
</SCRIPT>

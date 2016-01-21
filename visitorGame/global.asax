<SCRIPT LANGUAGE="C#" runat="Server">

// application begins
void Application_Start(Object s, EventArgs e)
{
	Application["lastVisitor"] = "Unknown";
}

// browser's first visit to the page, (session starts)
void Session_Start(Object s, EventArgs e)
{
		Session["visitorName"]="Honored Guest";
}
</SCRIPT>

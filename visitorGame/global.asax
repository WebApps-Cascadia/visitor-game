<SCRIPT LANGUAGE="C#" runat="Server">

    // application begins
    void Application_Start(Object s, EventArgs e)
    {
        Application["lastVisitor"] = "Unknown";
        Application["count"] = 0;
    }

    // browser's first visit to the page, (session starts)
    void Session_Start(Object s, EventArgs e)
    {
        Session["visitorName"] = "Honored Guest";
        Application["count"] = (int)Application["count"] + 1;
    }

    void Session_End(Object s, EventArgs e)
    {
        Application["count"] = (int)Application["count"] - 1;
    }
</SCRIPT>

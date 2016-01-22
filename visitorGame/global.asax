<SCRIPT LANGUAGE="C#" runat="Server">

    int count = 0;
    // application begins
    void Application_Start(Object s, EventArgs e)
    {
        Application["lastVisitor"] = "Unknown";
        Application["OnlineCounter"] = 0;
    }

    // browser's first visit to the page, (session starts)
    void Session_Start(Object s, EventArgs e)
    {
        Session["visitorName"]="Honored Guest";
        if (Application["OnlineCounter"] != null) 
  {
    Application.Lock();
    Application["OnlineCounter"] = ((int)Application["OnlineCounter"]) + 1; 
    Application.UnLock(); 
  } 
    }

    void Session_End(Object s, EventArgs e)
    {
        if (Application["OnlineCounter"] != null) 
  {
    Application.Lock();
    Application["OnlineCounter"] = ((int)Application["OnlineCounter"]) - 1; 
    Application.UnLock(); 
  } 
    }
</SCRIPT>

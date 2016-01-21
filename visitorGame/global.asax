<SCRIPT LANGUAGE="C#" runat="Server">

    // application begins
    void Application_Start(Object s, EventArgs e)
    {
        Application["lastVisitor"] = "Unknown";
        int temp = 0;
        Application["counter"] = temp;
       
    }

    // browser's first visit to the page, (session starts)
    void Session_Start(Object s, EventArgs e)
    {
        Session["visitorName"]="Honored Guest";
          Application.Lock();
        Application["counter"] =   (int)Application["counter"] + 1;
        Application.UnLock();

    }

    void Session_End(Object s, EventArgs e)
    {
        Session["visitorName"]="";
          Application.Lock();
        Application["counter"] =   (int)Application["counter"] - 1;
        Application.UnLock();
    }
</SCRIPT>

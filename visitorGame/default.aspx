<%@ Page Language="c#" %>
<script runat="server">

    void Page_Load(Object s, EventArgs e)
    {
        if(IsPostBack)
        {
         // Store visitor name in Session and Application
            Session["visitorName"]= firstName.Text;
    
            Application.Lock();
                Application["lastVisitor"]= firstName.Text;
            Application.UnLock();
        }
    
        // Assign the label a value from the Session data
        visitorName.Text = (string)Session["visitorName"];

        if (Request.Cookies["memory"] != null)
        {
            this.namePrompt.Visible = false;
            firstName.Text = Request.Cookies["memory"]["visitor"];
        } 
            
    }
    
    // Modify the look of the page when the button is clicked
    void join_Click(Object sender, EventArgs e) {
         // if valid entry show link and hide entry panel
        if (Page.IsValid) {
                findOut.Visible = true;
                entry.Visible = false;
            // add an exclamation to the label
                message.Text = " , you've joined the game!";
           }  
    }

</script>
<html>
<head>
    <title>Sessions and Applications</title>
    <!-- copyright 1/2003, Brian Bansenauer -->
    <!-- BIT 285: Web Applications-->
    <link href="website.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <h1>Welcome <asp:Label id="visitorName" runat="server"></asp:Label><asp:Label id="message" runat="server"></asp:Label>
    </h1>
    <form runat="server">
        <p>
            <asp:HyperLink id="findOut" runat="server" NavigateUrl="checkVisitors.aspx" Visible="False">Find out who signed in last... </asp:HyperLink>
        </p>
        <asp:Panel id="entry" runat="server">
            <asp:Panel ID="namePrompt" runat="server">
                Please enter your first name:&nbsp; 
                <asp:TextBox id="firstName" runat="server"></asp:TextBox>
            </asp:Panel>
            <p>
                <asp:Button id="join" onclick="join_Click" runat="server" Text="Join the Game!"></asp:Button>
            </p>
        </asp:Panel>
    </form>
</body>
</html>
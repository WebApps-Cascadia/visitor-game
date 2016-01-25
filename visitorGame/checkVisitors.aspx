<%@Page language="c#"%>
<script runat="server">
    void Page_Load(Object s, EventArgs e)
    {
        String numberOfVisiters = Application["counter"].ToString();
        //Decide the visitor is the last user and set the banner appropriately
        if(Application["lastVisitor"]==Session["visitorName"])
        {
            winnerBanner.Text = "(you're the last one of the " + numberOfVisiters + " user sessions into the game)";
            winnerMessage.Text ="Y O U &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; W I N";
        }else
        {
            winnerBanner.Text = "The last visitor to sign in was";
            winnerMessage.Text = (string)Application["lastVisitor"];
        }
        visitorName.Text = (string)Session["visitorName"];

        Counter.Text = numberOfVisiters;




    }

    protected void BtnQuit_Click(object sender, EventArgs e)
    {

    }

    protected void Btn_Quit(object sender, EventArgs e)
    {
        Session.Abandon();
    }
</script>
<html>
<head>
	<!-- copyright 1/2003, Brian Bansenauer -->
	<!-- BIT 285: Web Applications-->
	<title>Sessions and Applications</title>
	<style type="text/css">
		.name { color:#339900; font-size:150%;  }
		h2 { background-color: #FFCC00; text-align: center; }
	</style>

    <link href="website.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<form id="form1" runat="server">
	<h2>
	<asp:label class="name" ID="visitorName" runat="server"/>,
 		Welcome to the Visitor Game <br>
	<asp:label ID="winnerBanner" runat="server"/><br>
	<asp:label class="name" ID="winnerMessage" runat="server"/><br/>
  <span style="text-align:left;font-size:60%;color:#000099">
   <a href="default.aspx">back 
  to sign-in</a></span> </h2>


    Total counter: <asp:label class="name" ID="Counter" runat="server"/>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Btn_Quit" Text="Quit" />
        <br/>
    </form>
</body>
</html>


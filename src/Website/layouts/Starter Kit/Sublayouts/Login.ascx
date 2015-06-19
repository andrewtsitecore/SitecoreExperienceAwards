<%@ Control Language="C#" AutoEventWireup="true" %>
<div style="margin-left: 15px; width: 200px;">
    <asp:Login ID="ctlLogin" runat="server" Width="200px" TitleText="Enter Login " LabelStyle-Width="75px"
        TextBoxStyle-Width="125px" BorderStyle="Double" VisibleWhenLoggedIn="false" />
</div>
<div style="float: none; width: 200px; margin-left: 15px; width: 200px; border-style: double;
    border-color: Gray; border-width: thin;">
    <asp:Label ID="lbMsg" runat="server" />
    <br />
    <asp:Button ID="btnLogout" runat="server" Text="Log out" OnClick="Logout_ButtonClick" />
</div>
<sc:FieldRenderer runat="server" />
<script language="c#" runat="server">
     
     
    private string _usernameAsEntered = String.Empty;

    protected void Page_Load(Object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            lbMsg.Text = string.Format("Logged in as {0}", Sitecore.Context.User.DisplayName);
            if (Sitecore.Context.User.DisplayName.Contains("Anonymous"))
            {

                btnLogout.Enabled = false;
                btnLogout.Visible = false;
                ctlLogin.Enabled = true;

            }
            else
            {

                btnLogout.Enabled = true;
                btnLogout.Visible = true;
                ctlLogin.Enabled = false;
            }

        }

    }

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        ctlLogin.LoggingIn += new LoginCancelEventHandler(this.Login_LoggingIn);
        ctlLogin.LoginError += new EventHandler(this.Login_LoginError);
    }

    private void Login_LoggingIn(object sender, LoginCancelEventArgs e)
    {
        string domainUser = Sitecore.Context.Domain.GetFullName(ctlLogin.UserName);
        if (System.Web.Security.Membership.GetUser(domainUser) != null)
        {
            _usernameAsEntered = ctlLogin.UserName;
            ctlLogin.UserName = domainUser;
        }
    }

    private void Login_LoginError(object sender, EventArgs e)
    {
        ctlLogin.UserName = _usernameAsEntered;
    }

    protected void Logout_ButtonClick(object sender, EventArgs e)
    {
        Sitecore.Security.Authentication.AuthenticationManager.Logout();
        Response.Redirect(Request.RawUrl);
    }
        
</script>

<%@ control language="C#" autoeventwireup="true" codebehind="SocialLogin.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.SocialLogin" %>
<%@ Import Namespace="Officecore.Website.code.Helpers" %>
<%@ register src="~/layouts/system/Social/Connector/Login with Facebook.ascx" tagprefix="uc1" tagname="loginFacebook" %>
<%@ register src="~/layouts/system/Social/Connector/Login with Twitter.ascx" tagprefix="uc1" tagname="loginTwitter" %>
<%@ register src="~/layouts/system/Social/Connector/Login with Google.ascx" tagprefix="uc1" tagname="loginGoogle" %>
<%@ register src="~/layouts/system/Social/Connector/Login with LinkedIn.ascx" tagprefix="uc1" tagname="loginLinkedIn" %>

<asp:panel runat="server" id="pnlAccessError" visible="False" cssclass="row">
    <div class="col-md-12">
        <div class="alert alert-warning">
            <strong><asp:Literal runat="server" ID="litAccessErrorTitle" /></strong>
            <asp:Literal runat="server" ID="litAccessErrorBody" />
        </div>
    </div>
</asp:panel>

<asp:panel runat="server" id="pnlForms" cssclass="social-login row" visible="False">
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Login</h3>
            </div>
            <div class="panel-body" style="padding: 15px !important">
                <asp:panel runat="server" cssclass="form-horizontal" role="form" defaultbutton="btnSubmit">
                    <asp:panel runat="server" id="pnlLoginFailed" cssclass="alert alert-danger" role="alert" visible="False" enableviewstate="False">
                        <asp:Literal runat="server" ID="litLoginFailed" />
                    </asp:panel>                    
                    <div class="form-group">
                        <label for="<%=txtUsername.ClientID%>" class="col-sm-4 control-label">Username:</label>
                        <div class="col-sm-8">
                            <asp:TextBox runat="server" ID="txtUsername" CssClass="form-control" placeholder="Username" AutoCompleteType="Disabled" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="<%=txtPassword.ClientID%>" class="col-sm-4 control-label">Password:</label>
                        <div class="col-sm-8">
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" placeholder="Password" AutoCompleteType="Disabled" CssClass="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-8">
                            <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-default" Text="Sign in" OnClick="btnSubmit_Click" />
                        </div>
                    </div>
                </asp:panel>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Register</h3>
            </div>
            <div class="panel-body" style="padding: 15px !important">
                <asp:panel runat="server" id="pnlRegisterFailed" cssclass="alert alert-danger" role="alert" visible="False" enableviewstate="False">
                    <asp:Literal runat="server" ID="litRegisterFailed" />
                </asp:panel>
                <asp:panel runat="server" cssclass="form-horizontal" role="form" defaultbutton="btnRegister">
                    <div class="form-group">
                        <label for="<%=txtRegisterUsername.ClientID%>" class="col-sm-4 control-label">Username:</label>
                        <div class="col-sm-8">
                            <asp:TextBox runat="server" ID="txtRegisterUsername" CssClass="form-control" placeholder="Username" AutoCompleteType="Disabled" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="<%=txtRegisterPassword.ClientID%>" class="col-sm-4 control-label">Password:</label>
                        <div class="col-sm-8">
                            <asp:TextBox runat="server" ID="txtRegisterPassword" TextMode="Password" placeholder="Password" AutoCompleteType="Disabled" CssClass="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="<%=txtRegisterEmail.ClientID%>" class="col-sm-4 control-label">Email:</label>
                        <div class="col-sm-8">
                            <asp:TextBox runat="server" ID="txtRegisterEmail" CssClass="form-control" placeholder="Email" AutoCompleteType="Email" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-8">
                            <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-default" Text="Register" OnClick="btnRegister_Click" />
                        </div>
                    </div>
                </asp:panel>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">Social Login</h3>
            </div>
            <div class="panel-body" style="padding: 15px !important">
                Want to save time? <br/>
                Login with one of your social accounts below.
                <br/><br/>
                <p>
                    <uc1:loginfacebook runat="server" />
                    <uc1:logintwitter runat="server" />
                    <uc1:logingoogle runat="server" />
                    <uc1:loginlinkedin runat="server" />
                </p>
            </div>
        </div>
    </div>    
</asp:panel>

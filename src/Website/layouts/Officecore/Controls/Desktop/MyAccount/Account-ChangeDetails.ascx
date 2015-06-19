<%@ control language="C#" autoeventwireup="true" codebehind="Account-ChangeDetails.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.MyAccount.Address_ChangeDetails" %>

<asp:Panel runat="server" ID="pnl" DefaultButton="btnUpdate">
    <div id="DesktopAccount" class="col-md-12">
        <div id="details" class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Update your personal details</h3>
                </div>
                <div class="panel-body" style="padding: 15px!important;">
                    <asp:Panel runat="server" CssClass="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Title: </label>
                            <div class="col-sm-8">
                                <asp:DropDownList ID="ddlTitle" CssClass="form-control" runat="server" placeholer="DDLTitle">
                                    <asp:ListItem>Mr</asp:ListItem>
                                    <asp:ListItem>Mrs</asp:ListItem>
                                    <asp:ListItem>Miss</asp:ListItem>
                                    <asp:ListItem>Ms</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">First Name: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtFName" CssClass="form-control" placeholder="First Name" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Last Name: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtLName" CssClass="form-control" placeholder="Last Name" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Phone: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtPhone" CssClass="form-control" placeholder="Phone" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Mobile Phone: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtMPhone" CssClass="form-control" placeholder="Mobile" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Email: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Email" required />
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div id="address" class="col-md-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Update your address details</h3>
                </div>
                <div class="panel-body" style="padding: 15px !important">
                    <asp:Panel runat="server" CssClass="form-horizontal" role="form">
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">House Name: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtHouseName" CssClass="form-control" placeholder="House name/no" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Street Name: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtStreetName" CssClass="form-control" placeholder="Street Name" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">City: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtCity" CssClass="form-control" placeholder="City" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">County: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtCounty" CssClass="form-control" placeholder="County" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Postcode: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="txtPostcode" CssClass="form-control" placeholder="Postcode" required />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-4 control-label" style="text-align: left;">Country: </label>
                            <div class="col-sm-8">
                                <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="Postcode" required />
                               <%-- <asp:DropDownList runat="server" ID="ddlCountry" DataValueField="Id" DataTextField="Name"  CssClass="form-control" placeholder="Country" />--%>
                            </div>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-11 col-lg-offset-11 col-sm-1 col-lg-1">
                <asp:Button runat="server" ID="btnUpdate" CssClass="btn btn-default" Text="Submit" OnClick="btnUpdate_Click" />
            </div>
        </div>
    </div>
</asp:Panel>
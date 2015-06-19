<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailPromoSpot.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.EmailCampaign.EmailPromoSpot" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>


    <table cellspacing="0" cellpadding="0" border="0" width="190px" style="font-family:arial,helvetica,sans-serif; font-size:11px;">
        <tr>
            <td><h2>Popular Products</h2></td>
        </tr>
        <tr>
            <td align="center">
                <sc:image id="promoImage" field="image"  maxwidth="150" border="0" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:hyperlink id="promoLink"  runat="server" >
                  <h3>
                    <sc:text id="promoTitle" field="title" runat="server" />
                  </h3>
                </asp:hyperlink>
            </td>
        </tr>
        <tr>
            <td>
                <sc:text id="promoDescription" field="description" runat="server"/>
            </td>
        </tr>

    </table>
      

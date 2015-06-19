<%@ Control Language="C#" EnableViewState="false" AutoEventWireup="true" CodeBehind="Desktop-Slideshow.ascx.cs" Inherits="Officecore.Website.layouts.Officecore.Controls.Desktop.Global.Desktop_Slideshow" %>

<div id="news-carousel" class="carousel slide" >
  <!-- Indicators -->
  <ol class="carousel-indicators">
      <asp:Repeater ID="IndicatorRepeater" runat="server" ItemType="Sitecore.Data.Items.Item">
          <ItemTemplate>
              <li data-target="#news-carousel">
              </li>
          </ItemTemplate>
      </asp:Repeater>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <asp:Repeater ID="SlideRepeater" runat="server" ItemType="Sitecore.Data.Items.Item">
        <ItemTemplate>
            <div class="item">
                <a href="<%# GetUrl(Item) %>"><sc:FieldRenderer FieldName="Image" runat="server" Item="<%# Item %>" Parameters="w=320&h=240&crop=1" /></a>

                <div class="carousel-caption">
                    <h3><a href="<%# GetUrl(Item) %>"><sc:Text runat="server" Field="Caption Title" Item="<%# Item %>" /></a></h3>
                    <a href="<%# GetUrl(Item) %>"><sc:Text runat="server" Field="Caption" Item="<%# Item %>" /></a>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#news-carousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#news-carousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>

<asp:HiddenField ClientIDMode="Static" runat="server" ID="hiddenInterval" Value="5000" />
<asp:HiddenField ClientIDMode="Static" runat="server" ID="hiddenPause" Value="hover" />
<asp:HiddenField ClientIDMode="Static" runat="server" ID="hiddenWrap" Value="true" />
<asp:HiddenField ClientIDMode="Static" runat="server" ID="hiddenPageEdit" Value="false" />
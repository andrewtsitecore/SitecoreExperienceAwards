<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebForm.ascx.cs" Inherits="Officecore.Website.layouts.ExperienceAwards.WebForm" %>

<div id="WebFrom" class="col-md-12 col-sm-9 col-xs-12">
    <h1>
        <sc:text field="Form Intro Text" item='<%# Item %>' id="IntroText" runat="server" />
    </h1>
    <sc:placeholder ID="web" runat="server" key="webformactual" />    
</div>

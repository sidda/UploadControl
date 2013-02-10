<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="UploadControl._Default" %>
<%@ Register Src="~/FileUploadControl.ascx"   TagName="fu" TagPrefix="uc" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <uc:fu TableName="Table1" ContentPath="/Content"  runat="server"/>
    
    <br/>
    <br/>
    <br/>
    <uc:fu ID="Fu1" TableName="Table2" ContentPath="/Content" runat="server"/>
</asp:Content>

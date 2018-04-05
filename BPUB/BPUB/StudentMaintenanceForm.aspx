<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentMaintenanceForm.aspx.cs" Inherits="BPUB.StudentMaintenanceForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <%--  Gridview and detail view, detail view includes edit, delete, and new(insert)--%>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="sdsTest"></asp:GridView>
    <asp:SqlDataSource runat="server" ID="sdsTest"></asp:SqlDataSource>
</asp:Content>

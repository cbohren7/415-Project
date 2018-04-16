<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentBookSearch.aspx.cs" Inherits="BPUB.StudentBookSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-10 col-sm-offset-3">
         <div class="col-sm-8 form-group">
             <div class="col-sm-4">Select a Student</div>
             <asp:DropDownList ID="ddlStudent" runat="server"></asp:DropDownList>
         </div>
    </div>
</asp:Content>

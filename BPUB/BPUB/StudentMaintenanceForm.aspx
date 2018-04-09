<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentMaintenanceForm.aspx.cs" Inherits="BPUB.StudentMaintenanceForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  Gridview and detail view, detail view includes edit, delete, and new(insert)--%>
    <div class="col-sm-6 table-responsive">

        <asp:GridView ID="gvStudentMaintenance" runat="server" DataSourceID="sdsTest" CssClass="table table-bordered table-striped table-condensed"></asp:GridView>
        <asp:SqlDataSource runat="server" ID="sdsTest"></asp:SqlDataSource>
    </div>
    <div class="col-sm-6">
        <asp:DetailsView ID="dvCustomerMaintenance" runat="server" CssClass="table table-bordered table-condensed" >
            <Fields>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    </div>


</asp:Content>

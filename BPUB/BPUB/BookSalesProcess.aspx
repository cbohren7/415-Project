<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="BookSalesProcess.aspx.cs" Inherits="BPUB.BookSalesProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-10 col-sm-offset-3">
        <div class="col-sm-8 form-group">
            <div class="col-sm-4">Sale ID:</div>

            <asp:TextBox CssClass="col-sm-3 form-control" ID="txtSaleID" runat="server"></asp:TextBox>
        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-4">Payment ID:</div>

            <asp:TextBox CssClass="col-sm-3 form-control" ID="txtPaymentID" runat="server"></asp:TextBox>

        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-4">Student ID:</div>

            <asp:DropDownList CssClass="col-sm-5 form-control" ID="ddlStudentID" runat="server" DataSourceID="sdsStudentID" DataTextField="Email" DataValueField="StudentID"></asp:DropDownList>

            <asp:SqlDataSource runat="server" ID="sdsStudentID" ConnectionString='<%$ ConnectionStrings:BPUBConnectionString %>' SelectCommand="SELECT [StudentID], [Email] FROM [Student] ORDER BY [Email]"></asp:SqlDataSource>

        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-4">Sale Date:</div>

            <asp:Label CssClass="col-sm-5" ID="lblSaleDate" runat="server" Text=""></asp:Label>
        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-4">Amount Collected:</div>

            <asp:Label CssClass="col-sm-5" ID="lblAmountCollected" runat="server" Text=""></asp:Label>


        </div>
        <div class="col-sm-8">
            <asp:Button CssClass="col-sm-3 col-sm-offset-3 btn custom-btn" ID="btnSubmit" runat="server" Text="Submit" />
        </div>
       
    </div>


    <%--SaleID, SaleID PaymentID, Student IS, SaleDate, AmountCollected, etc. labels and textboxes--%>
</asp:Content>

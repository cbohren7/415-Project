<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="BookSalesProcess.aspx.cs" Inherits="BPUB.BookSalesProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-8 form-group">
        <div class="col-sm-3">Sale ID:</div>
        <div class="col-sm-5 form form-control">
            <asp:TextBox ID="txtSaleID" runat="server"></asp:TextBox>
        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-3">Payment ID:</div>
            <div class="col-sm-5 form form-control">
                <asp:TextBox ID="txtPaymentID" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-3">Student ID:</div>
            <div class="col-sm-5 form form-control">
                <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
            </div>
        </div>

        <div class="col-sm-8 form-group">
            <div class="col-sm-3">Sale Date:</div>
            <div class="col-sm-5">
                <asp:Label ID="lblSaleDate" runat="server" Text=""></asp:Label>
            </div>

            <div class="col-sm-8 form-group">
                <div class="col-sm-3">Amount Collected:</div>
                <div class="col-sm-5">
                    <asp:Label ID="lblAmountCollected" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>

          <div class="col-sm-8 form-group">
                <div class="col-sm-5">
                    <asp:Button ID="btn" runat="server" Text="Submit" />
                </div>
            </div>
</div>
    <%--SaleID, SaleID PaymentID, Student IS, SaleDate, AmountCollected, etc. labels and textboxes--%>
</asp:Content>

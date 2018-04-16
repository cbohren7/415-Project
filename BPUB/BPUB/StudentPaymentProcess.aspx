<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentPaymentProcess.aspx.cs" Inherits="BPUB.StudentPaymentProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    payment to seller--%>
    <div class="col-sm-10 col-sm-offset-3">
        <div class="col-sm-8 form-group">
            <div class="col-sm-4">Select a Sales ID:</div>
            <asp:DropDownList ID="ddlSaleID" runat="server"></asp:DropDownList>
        </div>
        <asp:DetailsView ID="dvSale" runat="server" Height="50px" Width="125px"></asp:DetailsView>
    </div>
    <div class="col-sm-10 col-sm-offset-3">
        <div class="col-sm-8 form-group">
            <div class="col-sm-4 row">
                <div>Payment ID:</div>
                <asp:TextBox ID="txtPaymentID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPaymentID" runat="server" ErrorMessage="This field is required" ControlToValidate="txtPaymentID" Text="*" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
            <div class="col-sm-4 row">
                <div>Student ID:</div>
                <asp:TextBox ID="txtStudentID" runat="server"></asp:TextBox>
               <%-- should the StudentID be a dropdown list?--%>
                </div>
            <div class="col-sm-4 row">
                <div>Payment Date:</div>
                <asp:TextBox ID="txtPaymentDate" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPaymentDate" runat="server" ErrorMessage="Payment Date is a required field" ControlToValidate="txtPaymentDate" Text="*" Display="Dynamic" CssClass="text-danger"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvtxtPaymentDate" runat="server" ErrorMessage="Please enter the correct date format" Type="Date" Operator="DataTypeCheck" ControlToValidate="txtPaymentDate" Text="*" Display="Dynamic" CssClass="text-danger"></asp:CompareValidator>
            </div>
            <div class="col-sm-4 row">
                <div>Payment Amount:</div>
                <asp:TextBox ID="txtPaymentAmount" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPaymentAmount" runat="server" ErrorMessage="Payment amount is a required field" CssClass="text-danger"></asp:RequiredFieldValidator>
            </div>
        </div>

    </div>
</asp:Content>

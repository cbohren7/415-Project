<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CourseBookSearch.aspx.cs" Inherits="BPUB.CourseBookSearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-sm-10 col-sm-offset-3">
         <div class="col-sm-8 form-group">
            <div class="col-sm-4">Select Course:</div>

             <asp:DropDownList CssClass="col-sm-5 form-control" AutoPostBack="true" ID="ddCourse" runat="server" DataSourceID="sdsCourse" DataTextField="CourseTitle" DataValueField="CourseNum"></asp:DropDownList>


             <asp:SqlDataSource runat="server" ID="sdsCourse" ConnectionString='<%$ ConnectionStrings:BPUB_ConnectionString %>' SelectCommand="SELECT [CourseNum], [CourseTitle] FROM [Course] ORDER BY [CourseTitle]"></asp:SqlDataSource>
         </div>
   
        <asp:GridView ID="gvBooks" runat="server" AutoGenerateColumns="False" DataSourceID="sdsBooks">
            <Columns>
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition"></asp:BoundField>
                <asp:BoundField DataField="AuthorFName" HeaderText="AuthorFName" SortExpression="AuthorFName"></asp:BoundField>
                <asp:BoundField DataField="AuthorLName" HeaderText="AuthorLName" SortExpression="AuthorLName"></asp:BoundField>
                <asp:BoundField DataField="AskingPrice" HeaderText="AskingPrice" SortExpression="AskingPrice"></asp:BoundField>
                <asp:BoundField DataField="CourseNum" HeaderText="CourseNum" SortExpression="CourseNum"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource runat="server" ID="sdsBooks" ConnectionString='<%$ ConnectionStrings:BPUB_ConnectionString %>' SelectCommand="SELECT Book.Title, Book.Edition, Book.AuthorFName, Book.AuthorLName, BookCopy.AskingPrice, Book.CourseNum FROM Book INNER JOIN BookCopy ON Book.ISBN = BookCopy.ISBN WHERE (Book.CourseNum = @CourseNum) ORDER BY BookCopy.AskingPrice">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddCourse" PropertyName="SelectedValue" Name="CourseNum"></asp:ControlParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="StarBookz.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" 
                        SortExpression="Author" />
                    <asp:BoundField DataField="Publisher" HeaderText="Publisher" 
                        SortExpression="Publisher" />
                    <asp:BoundField DataField="Category" HeaderText="Category" 
                        SortExpression="Category" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="PublicationDate" HeaderText="PublicationDate" 
                        SortExpression="PublicationDate" />
                    <asp:BoundField DataField="images" HeaderText="images" 
                        SortExpression="images" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </p>
            <asp:Label ID="txtTitle" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="txtAuthor" runat="server" Text="Author"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtPublisher" runat="server" Text="Publisher"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtCategory" runat="server" Text="Category"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtPublicationDate" runat="server" Text="Publication Date"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtPrice" runat="server" Text="Price"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="txtimages" runat="server" Text="Images"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnInsertNewBook" runat="server" Text="Insert New Book" />
        </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Paul\Desktop\StarBookz\StarBookz\App_Data\Database.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True" 
            DeleteCommand="DELETE FROM [books] WHERE [ID] = @ID" 
            InsertCommand="INSERT INTO [books] ([Title], [Author], [Publisher], [Category], [Price], [PublicationDate], [images]) VALUES (@Title, @Author, @Publisher, @Category, @Price, @PublicationDate, @images)" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [books]" 
            
            UpdateCommand="UPDATE [books] SET [Title] = @Title, [Author] = @Author, [Publisher] = @Publisher, [Category] = @Category, [Price] = @Price, [PublicationDate] = @PublicationDate, [images] = @images WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="PublicationDate" Type="Int32" />
            <asp:Parameter Name="images" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="PublicationDate" Type="Int32" />
            <asp:Parameter Name="images" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>

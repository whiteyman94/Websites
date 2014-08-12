<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="StarBookz.Basket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h1><%: Title %>
            <asp:Button ID="Button2" runat="server" Text="Search for more books" 
                onclick="Button2_Click" />
            .</h1>
        <p>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </p>
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridViewBooks" CssClass="mGrid" runat="server" 
                onselectedindexchanged="GridViewBooks_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" HeaderText="Remove from basket " 
                        SelectText="Remove" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:Label ID="lblTotal" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
            &nbsp;<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
        </asp:Panel>
        <br />
        <div>
            <asp:Button ID="btnCheckout" runat="server" Text="Checkout" 
                onClick='Button1_Click'/>
        </div>
</asp:Content>

<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsApp.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
        <h3>tell us something about yourself...</h3>
    <div>
        <label>Name</label>
        <asp:TextBox runat="server" ID="txtName" CssClass="text-box"/>
        <asp:RequiredFieldValidator runat="server" ID="rfvName" ControlToValidate="txtName" ErrorMessage="Required." Display="Dynamic" />
    </div>
    <div>
        <label>Email</label>
        <asp:TextBox runat="server" ID="txtEmail"/>
        <asp:RegularExpressionValidator runat="server" ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="valid email address is required" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" Display="Dynamic" />
        <asp:RequiredFieldValidator runat="server" ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Required." Display="Dynamic" />
    </div>

    <div>
        <label>your favorite color:</label>
        <asp:DropDownList runat="server" ID="ddlColor">
            <asp:ListItem Text="Please choose a color" Value="" />
            <asp:ListItem Text="Blue" Value="Blue" />
            <asp:ListItem Text="Red" Value="Red" />
            <asp:ListItem Text="Green" Value="Green" />
            <asp:ListItem Text="Yellow" Value="Yellow" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator runat="server" ID="rfvColor" ControlToValidate="ddlColor" ErrorMessage="Color Required."/>
    </div>
    <div>
        <asp:Button runat="server" ID="btnSubmit" Text="Submit Info" OnClick="btnSubmit_OnClick" />
    </div>
    <div class="message">
        <asp:Literal runat="server" ID="ltMessage" />
    </div>
    <address>
        One Microsoft Way<br />
        Redmond, WA 98052-6399<br />
        <abbr title="Phone">P:</abbr>
        425.555.0100
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>
</asp:Content>

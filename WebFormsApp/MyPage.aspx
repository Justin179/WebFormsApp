<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyPage.aspx.cs" Inherits="WebFormsApp.MyPage" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>advanced web server controls</h2>
        <h3>create a list of events in a repeater from a calendar control</h3>
    
    <div class="form-group">
        <label>Event Name</label>
        <asp:TextBox runat="server" ID="txtEvent" CssClass="form-control"/>
    </div>
    
    <div class="form-group">
        <label>Event date:</label>
        <asp:Calendar runat="server" ID="calendarEvents"/>
    </div>
    
    <div class="form-group">
        <asp:Button runat="server" ID="btnEvent" CssClass="btn btn-primary btn-large" Text="Add Event" OnClick="btnEvent_OnClick"/>
    </div>
    
    <h3>Events Repeater</h3>
    <div>
        <asp:Repeater runat="server" ID="rptEvents">
            <ItemTemplate>
                <h3> <%# DataBinder.Eval(Container.DataItem,"EventDate") %> <small> <%# DataBinder.Eval(Container.DataItem,"EventName") %> </small></h3>
            </ItemTemplate>
        </asp:Repeater>
    </div>

</asp:Content>

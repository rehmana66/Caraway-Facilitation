﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="AccountStat.aspx.cs" Inherits="_395project.dash.Admin.AccountStat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Title" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">

    <link href="/Content/dashboard.css" rel="stylesheet" />
    <h2 class="page-title"><%: Title %></h2>
    <h2 id="head" runat="server">Account Stats</h2>
    <hr />
       <div class="row" style="padding-bottom: 30px;">
        <div class="dashboardMargins" id="dashboardInfoLabel">
            <asp:Label runat="server" CssClass="section-header">INFORMATION</asp:Label>
        </div>
    </div>

        <!-- Facilitators Label and GridView -->
    <div class="row">
        <div class="col-md-offset-2 col-md-3">
            <div class="dashboardMargins" id="dashboardFacilitatorsLabel">
                <asp:Label runat="server" CssClass="dash-header">Facilitators</asp:Label>
            </div>
            <div class="row" id="userFacil" runat="server">
                <div id="dashboardGridFacilitator" class="dashboardMargins">
                    <div class="rounded_corners" style="width: 300px">
                        <asp:GridView ID="FacView" runat="server" Width="300px" AutoGenerateColumns="false" CssClass="myGridView" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
                            <HeaderStyle CssClass="HeaderStyle" />
                            <FooterStyle CssClass="FooterStyle" />
                            <RowStyle CssClass="RowStyle" />
                            <AlternatingRowStyle CssClass="AlternatingRowStyle" />
                            <Columns>
                                <asp:BoundField DataField="FacilitatorName" HeaderText="Name" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

        <!-- Children Label and GridView -->
        <div class="col-md-offset-2 col-md-3">
            <div class="dashboardMargins" id="dashboardChildrenLabel">
                <asp:Label runat="server" CssClass="dash-header">Children</asp:Label>
            </div>
            <div class="row" id="userChildren" runat="server">
                <div id="dashboardGridChildren" class="dashboardMargins">
                    <div class="rounded_corners" style="width: 300px">
                        <asp:GridView ID="ChildView" runat="server" Width="300px" AutoGenerateColumns="false" CssClass="myGridView" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
                            <HeaderStyle CssClass="HeaderStyle" />
                            <FooterStyle CssClass="FooterStyle" />
                            <RowStyle CssClass="RowStyle" />
                            <AlternatingRowStyle CssClass="AlternatingRowStyle" />
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Children" />
                                <asp:BoundField DataField="Grade" HeaderText="Grade" />
                                <asp:BoundField DataField="Classroom" HeaderText="Classroom" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <hr />




    <link href="/Content/dashboard.css" rel="stylesheet" />
     <div class="row" style="padding-bottom: 30px; text-align: center;">
        <div class="dashboardMargins" id="statsHoursLabel">
            <asp:Label runat="server" CssClass="section-header">HOURS</asp:Label>
			<div class="row">
				<asp:Label ID="Label1" runat="server" Text="Month" CssClass="input-header"></asp:Label>
        		<asp:DropDownList ID="MonthDropDown" runat="server" CssClass="signupDropDown">
				</asp:DropDownList>
			</div>  
			<div></div>

			<div class="row">
				<asp:Label ID="Label2" runat="server" Text="Year" CssClass="input-header"></asp:Label>
				<asp:DropDownList ID="YearDropDown" runat="server" CssClass="signupDropDown" DataSourceID="GetYears" DataTextField="Year" DataValueField="Year">
				</asp:DropDownList>
				<asp:SqlDataSource ID="GetYears" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT Year FROM dbo.Stats WHERE Year IS NOT NULL"></asp:SqlDataSource>
			</div>			
			<div></div>
			<asp:Button ID="UpdateButton" runat="server" Text="Get Stats" CssClass="mybutton" OnClick="UpdateButton_Click" />
		</div>
    </div>

<div class="row">
       
        <div class="col-md-offset-2 col-md-3">
            <div class="dashboardMargins" id="statsMonthlyLabel">
                <asp:Label runat="server" CssClass="dash-header">Monthly Total</asp:Label>
            </div>
            <div class="row">
                <div id="statsMonthlyTotal" class="dashboardMargins">
                    <div>
                        <asp:Label runat="server" CssClass="stats-info" ID="monthlyHoursLabel">0</asp:Label>
                    </div>
                </div>
            </div>
        </div>
        <!-- Monthly Section -->
        <div class="col-md-offset-2 col-md-3">
            <div class="dashboardMargins" id="statsYearlyLabel">
                <asp:Label runat="server" CssClass="dash-header">Yearly Total</asp:Label>
            </div>
            <div class="row">
                <div id="statsYearlyTotal" class="dashboardMargins">
                    <div>
                        <asp:Label runat="server" CssClass="stats-info" ID="yearlyHoursLabel">0</asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<hr />
	<div class="row" id="Div1" runat="server">
		<div id="FacilitatorHours" class="dashboardMargins">
			<div class="rounded_corners" style="width: 600px">
			<asp:GridView ID="FacilitatorHoursGridView" runat="server" style="width: 600px" CssClass="myGridView" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt">
							<HeaderStyle CssClass="HeaderStyle" />
							<FooterStyle CssClass="FooterStyle" />
							<RowStyle CssClass="RowStyle" />
							<AlternatingRowStyle CssClass="AlternatingRowStyle" />
			</asp:GridView>
			</div>
		</div>
	</div>
     


</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="footer" runat="server">
</asp:Content>



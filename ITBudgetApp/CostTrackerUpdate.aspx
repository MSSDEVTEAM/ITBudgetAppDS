<%@ Page Title="UpdateCost" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="CostTrackerUpdate.aspx.cs" Inherits="ITBudgetApp.CostTrackerUpdate" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Update Cost</h1>
    <br />
    <asp:Panel ID="pnAddRemoveStock" runat="server">
        <table>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblCompany" runat="server" Text="Company:" CssClass="lbl"></asp:Label>
                </td>
                <td>&nbsp</td>
                <td>
                    <asp:DropDownList ID="ddCompany" runat="server" DataSourceID="Company" DataValueField="ID" DataTextField="Company" Width="600px"></asp:DropDownList>
            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblCostCentre" runat="server" Text="Cost Centre:" CssClass="lbl"></asp:Label>
                </td>
                <td>&nbsp</td>
                <td>
                    <asp:DropDownList ID="ddCostCentre" runat="server" DataSourceID="CostCentre" DataValueField="ID" DataTextField="CostCentre" AutoPostBack="True" OnSelectedIndexChanged="ddCostCentre_SelectedIndexChanged" Width="600px"></asp:DropDownList>
            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblCost" runat="server" Text="Cost:" CssClass="lbl"></asp:Label>
                </td>
                <td>&nbsp</td>
                <td>
                    <asp:DropDownList ID="ddCost" runat="server" DataSourceID="Costs" DataValueField="ID" DataTextField="CostName" Width="600px"></asp:DropDownList>
            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblYear" runat="server" Text="Year:" CssClass="lbl"></asp:Label>
                </td>
                <td>&nbsp</td>
                <td>
                    <asp:DropDownList ID="ddYear" runat="server" DataSourceID="Years" DataValueField="Years" DataTextField="Years"></asp:DropDownList>
            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblMonth" runat="server" Text="Month:" CssClass="lbl"></asp:Label>
                </td>
                <td>&nbsp</td>
                <td>
                    <asp:DropDownList ID="ddMonth" runat="server" DataSourceID="Months" DataValueField="Monthnumber" DataTextField="MonthName"></asp:DropDownList>
            </tr>
            <tr>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 179px; height: 22px;">
                    <asp:Label ID="lblShowNet" runat="server" Text="Show Net or Gross?:" CssClass="lbl"></asp:Label>

                </td>
                <td style="height: 22px"></td>
                <td style="height: 22px">
                    <asp:DropDownList ID="ddShowNet" runat="server" AutoPostBack="True" DataSourceID="ShowNet" DataValueField="ID" DataTextField="NetOrGross" OnSelectedIndexChanged="ddShowNet_SelectedIndexChanged" ></asp:DropDownList>

                </td>

            </tr>


            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblPreviousBudget" runat="server" Text="Previous Budget Amount:" CssClass="lbl"></asp:Label>

                </td>
                <td>&nbsp</td>
                <td>
                    <asp:TextBox ID="txtPreviousBudget" runat="server" CssClass="lbltxt" Width="250px"></asp:TextBox></td>

            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblCurrentBudget" runat="server" Text="Current Budget Amount:" CssClass="lbl"></asp:Label>

                </td>
                <td>&nbsp</td>
                <td>
                    <asp:TextBox ID="txtCurrentBudget" runat="server" CssClass="lbltxt" Width="250px"></asp:TextBox></td>

            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>

            <tr>
                <td><strong>Update Billed Amounts</strong></td>
            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>

            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblBilled" runat="server" Text="Billed Amount:" CssClass="lbl"></asp:Label>

                </td>
                <td>&nbsp</td>
                <td>
                    <asp:TextBox ID="txtBilled" runat="server" CssClass="lbltxt" Width="250px"></asp:TextBox></td>

            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px; height: 22px;">
                    <asp:Label ID="lblIsNet" runat="server" Text="Is Billed Amount Net?:" CssClass="lbl"></asp:Label>

                </td>
                <td style="height: 22px"></td>
                <td style="height: 22px">
                    <asp:DropDownList ID="DDIsNet" runat="server" DataSourceID="IsNet" DataValueField="ID" DataTextField="IsNet" OnSelectedIndexChanged="DDIsNet_SelectedIndexChanged" AutoPostBack="True" ></asp:DropDownList>

                </td>

            </tr>

            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">
                    <asp:Label ID="lblDifference" runat="server" Text="Difference:" CssClass="lbl"></asp:Label>

                </td>
                <td>&nbsp</td>
                <td>
                    <asp:TextBox ID="txtDifference" runat="server" CssClass="lbltxt" ReadOnly="True" Width="250px"></asp:TextBox>

                </td>

            </tr>
            <tr>
                <td>&nbsp</td>
            </tr>
            <tr>
                <td style="width: 179px">

                    <asp:TextBox ID="txtHiddenId" runat="server" CssClass="lbltxt" ReadOnly="True" Visible="False"></asp:TextBox>

                </td>

                <td>&nbsp</td>
                <td>
                    <asp:Button ID="btnUpdateItems" runat="server" Text="Update" CssClass="btn btn-success" OnClick="btnUpdateItems_Click" Width="164px" />
            </tr>
            <tr>
                <td style="width: 179px">&nbsp;</td>

                <td>&nbsp</td>
                <td>
                    <asp:Label ID="lblError" runat="server" Text="Please Select If Billed Amount Is Net Or Gross" CssClass="lbl" ForeColor="Red" Visible="False"></asp:Label>
            </tr>


        </table>
        <asp:SqlDataSource ID="Company" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_Company_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="CostCentre" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_CostCentre_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Costs" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_Costs_Get" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddCostCentre" Name="CostCentre" PropertyName="SelectedValue" Type="Int32" DefaultValue="1" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Years" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_Years_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="Months" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_Months_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="IsNet" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_IsNet_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="ShowNet" runat="server" ConnectionString="<%$ ConnectionStrings:ITBudgetAppConnectionString %>" SelectCommand="usp_NetOrGross_Get" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


    </asp:Panel>


</asp:Content>

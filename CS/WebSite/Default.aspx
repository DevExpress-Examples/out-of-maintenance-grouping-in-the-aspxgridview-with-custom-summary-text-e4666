<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GridOverview.Default" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <asp:SqlDataSource ID="dataSource" runat="server" 
            ConnectionString="Data Source=(local);Initial Catalog=Northwind;Integrated Security=True"
            SelectCommand="SELECT c.CategoryID, c.CategoryName, p.ProductName, p.QuantityPerUnit, p.UnitPrice, p.UnitsInStock, p.UnitsOnOrder, p.Discontinued 
                            FROM categories c, products p WHERE c.CategoryID = p.CategoryID">
        </asp:SqlDataSource>
        <dx:ASPxGridView ID="grid" runat="server" DataSourceID="dataSource" KeyFieldName="CategoryID" AutoGenerateColumns="False" OnSummaryDisplayText="grid_SummaryDisplayText">
            <GroupSummary>
                <dx:ASPxSummaryItem SummaryType="Count" FieldName="CategoryName" ShowInGroupFooterColumn="ProductName" />
            </GroupSummary>
            <Columns>
                <dx:GridViewDataTextColumn FieldName="CategoryName" GroupIndex="0">
                    <Settings AllowDragDrop="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ProductName" >
                    <Settings AllowGroup="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="QuantityPerUnit" >
                    <Settings AllowGroup="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitPrice" >
                    <Settings AllowGroup="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsInStock" >
                    <Settings AllowGroup="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="UnitsOnOrder" >
                    <Settings AllowGroup="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataCheckColumn FieldName="Discontinued">
                    <Settings AllowGroup="False" />
                </dx:GridViewDataCheckColumn>
            </Columns>
            <SettingsPager AlwaysShowPager="True">
            </SettingsPager>
            <Settings ShowGroupedColumns="true" ShowGroupFooter="VisibleAlways" ShowGroupPanel="True" />
        </dx:ASPxGridView>    
    </div>
    </form>
</body>
</html>

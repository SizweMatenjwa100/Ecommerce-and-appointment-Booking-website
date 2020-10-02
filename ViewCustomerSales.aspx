<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true" CodeBehind="ViewCustomerSales.aspx.cs" Inherits="SalonWebApp2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 1437px;
        }
        .style2
        {
            width: 1404px;
        }
        .style3
        {
            width: 1378px;
        }
        .style4
        {
            width: 1348px;
        }
        .style5
        {
            width: 1319px;
        }
        .style6
        {
            width: 1259px;
        }
        .style7
        {
            width: 1588px;
        }
        .style8
        {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="barbers" class="section lb">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                        <small>Proffessionalism at its best</small>
                        <h3>View All Customer Sales<br />
                            <br />
                            </h3>
                        <hr class="grd1">
                        
                            <table style="width:100%; margin-top: 104px;">
                                <tr>
                                    <td class="style1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                                VerticalAlign="Bottom" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                            <TodayDayStyle BackColor="#CCCCCC" />
                                        </asp:Calendar>
                                    </td>
                                    <td class="style2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    <td align="center" 
                                        
                                        style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold">
                                        <asp:Label ID="Label2" runat="server" Text="WEB SALES"></asp:Label>
                                        <br />
                                        <asp:DetailsView ID="DetailsView2" runat="server" BackColor="White" 
                                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                            ForeColor="Black" GridLines="Horizontal" Height="50px" Width="431px" 
                                            AutoGenerateRows="False" 
                                            DataSourceID="SqlDataSource1" DataKeyNames="SaleNumber">
                                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="SaleNumber" HeaderText="SaleNumber" 
                                                    SortExpression="SaleNumber" InsertVisible="False" ReadOnly="True">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" 
                                                    SortExpression="SaleDate"></asp:BoundField>
                                                <asp:BoundField DataField="SaleAmount" HeaderText="SaleAmount" 
                                                    SortExpression="SaleAmount"></asp:BoundField>
                                                <asp:BoundField DataField="CustID" 
                                                    HeaderText="CustID" SortExpression="CustID">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="SaleStatus" HeaderText="SaleStatus" 
                                                    SortExpression="SaleStatus"></asp:BoundField>
                                            </Fields>
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        </asp:DetailsView>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style1">
                                    </td>
                                    <td class="style1">
                                        </td>
                                    <td class="style1">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        <h2>Selected Appointment : 
                                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                        </h2>&nbsp;ENTER CUSTOMER ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        :<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <br />
                                        <br />
                                       
                                        <asp:Button ID="Button2" runat="server" Text="Find ID" Width="140px" />
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                                            
                                            
                                            SelectCommand="SELECT DISTINCT * FROM [Sale] WHERE ([SaleDate] = @SaleDate)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Calendar1" Name="SaleDate" 
                                                    PropertyName="SelectedDate" Type="DateTime" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                                            SelectCommand="SELECT * FROM [Order1] WHERE ([Order_Date] = @Order_Date)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Calendar1" DbType="Date" 
                                                    Name="Order_Date" PropertyName="SelectedDate" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td class="style4" style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #000000; text-align: center">
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                    <td class="style5" align="center" 
                                        
                                        style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="IN-STORE SALES"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                            CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                                            Height="38px" Width="436px" BackColor="White" BorderColor="#CCCCCC" 
                                            BorderStyle="None" BorderWidth="1px" DataKeyNames="SaleNumber" 
                                            DataSourceID="SqlDataSource1">
                                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="SaleNumber" HeaderText="SaleNumber" 
                                                    InsertVisible="False" ReadOnly="True" SortExpression="SaleNumber">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" 
                                                    SortExpression="SaleDate"></asp:BoundField>
                                                <asp:BoundField DataField="SaleAmount" HeaderText="SaleAmount" 
                                                    SortExpression="SaleAmount"></asp:BoundField>
                                                <asp:BoundField DataField="CustID" 
                                                    HeaderText="CustID" SortExpression="CustID">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="SaleStatus" HeaderText="SaleStatus" 
                                                    SortExpression="SaleStatus"></asp:BoundField>
                                            </Fields>
                                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        </asp:DetailsView>
                                        <br />
                                        <br />

                                        </td>
                                </tr>
                            </table>
                        
                            <table style="width:1632px; height: 717px;">
                                <tr>
                                    <td class="style7" align="center" 
                                        style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DetailsView ID="DetailsView3" runat="server" AllowPaging="True" 
                                            AutoGenerateRows="False" BackColor="White" BorderColor="#DEDFDE" 
                                            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="SaleNumber" 
                                            DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Vertical" 
                                            Height="227px" Width="680px">
                                            <AlternatingRowStyle BackColor="White" />
                                            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="SaleNumber" HeaderText="SaleNumber" 
                                                    InsertVisible="False" ReadOnly="True" SortExpression="SaleNumber">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="SaleDate" HeaderText="SaleDate" 
                                                    SortExpression="SaleDate"></asp:BoundField>
                                                <asp:BoundField DataField="SaleAmount" HeaderText="SaleAmount" 
                                                    SortExpression="SaleAmount"></asp:BoundField>
                                                <asp:BoundField DataField="CustID" HeaderText="CustID" SortExpression="CustID">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="SaleStatus" HeaderText="SaleStatus" 
                                                    SortExpression="SaleStatus"></asp:BoundField>
                                            </Fields>
                                            <FooterStyle BackColor="#CCCC99" />
                                            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                            <RowStyle BackColor="#F7F7DE" />
                                        </asp:DetailsView>
                        
                                    &nbsp;&nbsp; 
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                                            SelectCommand="SELECT * FROM [Sale] WHERE ([CustID] = @CustID)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="CustID" PropertyName="Text" 
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td class="style6">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        <br />
                                    </td>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        
                        </div>
                    </div><!-- end title -->
    </form>

    </div>
    </div>
</asp:Content>

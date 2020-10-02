<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true" CodeBehind="ViewAllBookings.aspx.cs" Inherits="SalonWebApp2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="barbers" class="section lb">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                        <small>Proffessionalism at its best</small>
                        <h3>View All Customer Appointments<br />
                            <br />
                            </h3>
                        <hr class="grd1">
                        
                            <table style="width:100%; margin-top: 104px;">
                                <tr>
                                    <td class="style1">
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                            BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                                            ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" 
                                            onselectionchanged="Calendar1_SelectionChanged">
                                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                                                VerticalAlign="Bottom" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                                                Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                            <TodayDayStyle BackColor="#CCCCCC" />
                                        </asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td class="style2">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    <td align="center" 
                                        
                                        style="font-family: 'Courier New', Courier, monospace; font-size: large; font-weight: bold">
                                        <asp:Label ID="Label2" runat="server" Text="WEB APPOINTMENTS"></asp:Label>
                                        <br />
                                        <asp:DetailsView ID="DetailsView2" runat="server" BackColor="White" 
                                            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                            ForeColor="Black" GridLines="Horizontal" Height="50px" Width="431px" 
                                            AutoGenerateRows="False" 
                                            DataSourceID="SqlDataSource2" AllowPaging="True">
                                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" 
                                                    SortExpression="Employee_ID">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" 
                                                    SortExpression="Customer_ID"></asp:BoundField>
                                                <asp:BoundField DataField="Appointment_Date" HeaderText="Appointment_Date" 
                                                    SortExpression="Appointment_Date" DataFormatString="{0:d}"></asp:BoundField>
                                                <asp:BoundField DataField="Time_in" 
                                                    HeaderText="Time_in" SortExpression="Time_in">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Time_out" HeaderText="Time_out" 
                                                    SortExpression="Time_out"></asp:BoundField>
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
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </h2>
                                        <br />
                                        <br />
                                       
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                                            
                                            SelectCommand="SELECT Appointment_ID, Customer_ID, Employee_ID, Appointment_Date, Appointment_Amount FROM Appointment WHERE (Appointment_Date = @Appointment_Date)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Calendar1" Name="Appointment_Date" 
                                                    PropertyName="SelectedDate" Type="DateTime" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:DBCS %>" 
                                            SelectCommand="SELECT * FROM [tblAppointment2] WHERE ([Appointment_Date] = @Appointment_Date)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Calendar1" DbType="Date" 
                                                    Name="Appointment_Date" PropertyName="SelectedDate" />
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
                                        <asp:Label ID="Label3" runat="server" Text="IN-STORE APPOINTMENTS"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                                            CellPadding="4" ForeColor="Black" GridLines="Horizontal" 
                                            Height="38px" Width="436px" BackColor="White" BorderColor="#CCCCCC" 
                                            BorderStyle="None" BorderWidth="1px" DataKeyNames="Appointment_ID" 
                                            DataSourceID="SqlDataSource1" AllowPaging="True">
                                            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <Fields>
                                                <asp:BoundField DataField="Appointment_ID" HeaderText="Appointment_ID" 
                                                    InsertVisible="False" ReadOnly="True" SortExpression="Appointment_ID">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" 
                                                    SortExpression="Customer_ID"></asp:BoundField>
                                                <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" 
                                                    SortExpression="Employee_ID"></asp:BoundField>
                                                <asp:BoundField DataField="Appointment_Date" DataFormatString="{0:d}" 
                                                    HeaderText="Appointment_Date" SortExpression="Appointment_Date">
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Appointment_Amount" HeaderText="Appointment_Amount" 
                                                    SortExpression="Appointment_Amount"></asp:BoundField>
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
                                    <td class="style7" align="center">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px">
                                        </asp:DetailsView>
                        
                                    &nbsp;&nbsp; </td>
                                    <td class="style9">
                                        &nbsp;</td>
                                    <td class="style6">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        &nbsp;</td>
                                    <td class="style10">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style8">
                                        <br />
                                    </td>
                                    <td class="style10">
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

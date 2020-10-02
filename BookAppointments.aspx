<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true"
    CodeBehind="BookAppointments.aspx.cs" Inherits="SalonWebApp2.RTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="css/StyleSheet2.css" />
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <asp:button id="ViewMyReservations" runat="server" text="View My Appointments" style="border: solid 1px #ddd"
        height="40px" width="200px" backcolor="#ffd966" forecolor="Lime" onclick="ViewMyReservations_Click" />
    <div class="container-fluid">
        <div class="section-title row text-center">
            <div class="col-md-8 col-md-offset-2">
                <h3>
                    Book Appointment</h3>
                <hr class="grd1">
                <p class="lead">
                    Our Salon welcomes every person to come and experience the services we have to offer
                    within an environment that will allow you to relax and ejoy our professionally designed
                    products.</p>
                <br />
                <asp:label id="lblDate" runat="server" forecolor="Black"></asp:label>
                <asp:label id="lblBarber" runat="server" forecolor="Black"></asp:label><br />
                <asp:label id="lblMessage" runat="server" forecolor="Black"></asp:label>
            </div>
        </div>
        <!-- end title -->
    </div>
    <div>
        <table class="center">
            <tr>
                <asp:repeater id="rptAvailableTimes" runat="server" onitemdatabound="rptAvailableTimes_ItemDataBound">
                    <itemtemplate>
        <div class="col-md-6">
        <div class="service-wrap clearfix">                                
                                <h4><asp:Label id="lblPName" runat="server" Text='<%# Eval("RTimes") %>' ></asp:Label></h4>
                                <p><asp:Label id="lblPDiscription" runat="server" Text='<%# Eval("TStatus") %>' ></asp:Label></p>
                            </div></div>

        </itemtemplate>
                </asp:repeater>
            </tr>
            <tr>
                <td>
                    <asp:calendar id="Calendar1" runat="server"></asp:calendar>
                </td>
                <td valign="top">
                    Time in:<br />
                    <asp:dropdownlist id="ddlTimeIn" width="250px" backcolor="#ffd966" forecolor="#666666"
                        height="35px" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="ddlTimeIn_SelectedIndexChanged1" >
                        <asp:listitem value="-1">Select Time to arrive at the Salon</asp:listitem>
                        <asp:listitem value="0">7:00 am</asp:listitem>
                        <asp:listitem value="1">8:00 am</asp:listitem>
                        <asp:listitem value="2">9:00 am</asp:listitem>
                        <asp:listitem value="3">10:00 am</asp:listitem>
                        <asp:listitem value="4">11:00 am</asp:listitem>
                        <asp:listitem value="5">12:00 pm</asp:listitem>
                        <asp:listitem value="6">01:00 pm</asp:listitem>
                        <asp:listitem value="7">02:00 pm</asp:listitem>
                        <asp:listitem value="8">03:00 pm</asp:listitem>
                        <asp:listitem value="9">04:00 pm</asp:listitem>
                        <asp:listitem value="10">05:00 pm</asp:listitem>
                        <asp:listitem value="11">06:00 pm</asp:listitem>
                        <asp:listitem value="12">07:00 pm</asp:listitem>
                    </asp:dropdownlist>
                    <br />
                    <br />
                    <br />
                    Time out:<br />
                    <asp:dropdownlist id="ddlTimeOut" width="250px" backcolor="#ffd966" forecolor="#666666"
                        height="35px" runat="server">
                        <asp:listitem value="-1">Estimated finish time</asp:listitem>
                    </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <br />
                    <asp:scriptmanager id="ScriptManager1" runat="server">
                    </asp:scriptmanager>
                    <asp:updatepanel id="UpdatePanel1" runat="server">
                        <contenttemplate>
                                    <br />
                                    <asp:DropDownList ID="DDsp" runat="server" AutoPostBack="True" 
                                        BackColor="#ffd966" ForeColor="#666666" Height="35px"  Width="250px" 
                                        onselectedindexchanged="DDsp_SelectedIndexChanged">
                                        <asp:ListItem value="-1">Select Service
                                        </asp:ListItem>
                                        <asp:ListItem Value="1">Hair Style</asp:ListItem>
                                        <asp:ListItem Value="2">Spar Service</asp:ListItem>
                                        <asp:ListItem Value="3">Nails Service</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:DropDownList ID="DropDownList1" Width="250px" BackColor="#ffd966" ForeColor="#666666"
                                        Height="35px" runat="server" AutoPostBack="True" 
                                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Image ID="tblImage" Width="300px" Height="200px" runat="server" />
                                    <br />
                                </contenttemplate>
                    </asp:updatepanel>
                    <br />
                    <br />
                    <div style="width: 450px">
                        <asp:button id="SubmitReservation" runat="server" text="Submit" backcolor="#ffd966"
                            style="border: solid 1px #ddd" height="40px" width="200px " forecolor="Black"
                            onclick="SubmitReservation_Click" />
                        <asp:button id="btnCheckAvailability" runat="server" text="Check Availability" backcolor="#ffd966"
                            style="border: solid 1px #ddd" height="40px" width="200px" forecolor="Black"
                            onclick="btnCheckAvailability_Click" />
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:content>

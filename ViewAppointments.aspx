<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true"
    CodeBehind="ViewAppointments.aspx.cs" Inherits="SalonWebApp2.ViewAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
<br/><br/>
    <div class="container-fluid">
        <div class="section-title row text-center">
            <div class="col-md-8 col-md-offset-2">
                <h3>

                    <asp:label id="lblHeader" runat="server"></asp:label></h3>
            </div>
        </div>
        <!-- end title -->
    </div>


    <asp:repeater id="Repeater1" runat="server" 
        onitemcommand="Repeater1_ItemCommand">
            <itemtemplate>
        <div class="col-md-6">
        <div class="service-wrap clearfix">
                                <img src="images/hairCut.png" alt="" class="img-responsive img-rounded alignleft"/>
                                <h4>Date:&nbsp; <asp:Label ID="lblDate" runat="server" Text='<%# Eval("Appointment_Date", "{0:dd/MM/yyyy}") %>'></asp:Label></h4>
                                <p>Time:&nbsp; <asp:Label ID="lblTimeIn" runat="server" Text='<%# Eval("Time_in") %>'></asp:Label> &nbsp;  -> &nbsp; <asp:Label ID="lblTimeOut" runat="server" Text='<%# Eval("Time_out") %>'></asp:Label>
                                <br>
                                Barber Name:&nbsp; <asp:Label ID="lblEmpName" runat="server" Text='<%# Eval("Employee_FName") %>'></asp:Label>
                                <br>
                                Service:&nbsp; <asp:Label ID="lblService" runat="server" Text='<%# Eval("ServiceSelected") %>'></asp:Label>
                                <br/>
                                <br/>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('are you sure you want to delete this reservation?')"
                                        Text="Delete" CommandName="delete" Style="border: solid 1px #ddd" Height="40px"
                                        Width="140px" BackColor="#ffd966" ForeColor="red"></asp:LinkButton>
                                </p>
                            </div></div>

        </itemtemplate>
        </asp:repeater>

</asp:content>

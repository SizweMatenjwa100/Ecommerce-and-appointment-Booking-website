<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true"
    CodeBehind="AdminPortal.aspx.cs" Inherits="SalonWebApp2.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div id="services" class="section lb">
        <div class="container-fluid">
            <div class="section-title row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <small>Proffesionalism at its best</small>
                    <h3>
                        ADMIN PORTAL</h3>
                    <hr class="grd1">
                    <p class="lead">
                        Manage your greatest asset, YOUR ONLINE PRESENCE!</p>
                </div>
            </div>
            <!-- end title -->
            <div class="row">
                <div class="col-md-6">
                    <div class="service-wrap clearfix">
                        <a href="ViewAllBookings.aspx">
                            <img src="images/book3.png.jpg" alt="" class="img-responsive img-rounded alignleft" /></a>
                        <h4>
                            View ALL Customer Appointments</h4>
                    </div>
                    <!-- end issue -->
                    <div class="service-wrap clearfix">
                        <a href="ViewCustomerSales.aspx">
                            <img src="images/cart.png" alt="" class="img-responsive img-rounded alignleft" /></a>
                        <h4>
                            View ALL Customer Sales</h4>
                    </div>
                    <!-- end issue -->
</asp:content>

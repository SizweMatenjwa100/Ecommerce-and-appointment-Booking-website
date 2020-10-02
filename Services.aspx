<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="SalonWebApp2.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <br/><br/>
            <div id="services" class="section lb">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                        <small>WELCOME TO EMANGWENI SALON</small>
                        <h3>OUR SERVICES</h3>
                        <hr class="grd1">
                        <p class="lead">We dont compromise on the quality of our sevices and we only employ proffessionals to execute high level services deemed to make you come back for more!</p>
                        </div>
                    </div><!-- end title -->

                    <div class="row">
                        <div class="col-md-6">
                            <div class="service-wrap clearfix">
                                <img src="uploads/braiding_01.jpg" alt="" class="img-responsive img-rounded alignleft">
                                <h4>Hair Braiding</h4>
                                <p>We have one of the best hairstylists that are exceptional at hairbraiding.</p>
                            </div><!-- end issue -->

                            <div class="service-wrap clearfix">
                                <img src="uploads/barbercuts.jpg" alt="" class="img-responsive img-rounded alignleft">
                                <h4>Shaving</h4>
                                <p>We offer one of the best haircuts,beard and mustache trimming styles</p>
                            </div><!-- end issue -->

                            <div class="service-wrap lastchild clearfix">
                                <img src="uploads/massage.jpg" alt="" class="img-responsive img-rounded alignleft">
                                <h4>Spar Treatment</h4>
                                <p>We have a dedicated in-house spar to treat any of our clients that needs massages and alike.</p>
                            </div><!-- end issue -->
                        </div><!-- end col -->

                        <div class="col-md-6">
                            <div class="service-wrap clearfix">
                                <img src="uploads/Weavetreatment_01.jpg" alt="" class="img-responsive img-rounded alignleft">
                                <h4>Weave Treatment</h4>
                                <p>We have the finest products and methods that rejuvinate and renew weaves to satisfy your needs</p>
                            </div><!-- end issue -->

                            <div class="service-wrap clearfix">
                                <img src="uploads/Eyelashes_01.jpg" alt="" class="img-responsive img-rounded alignleft">
                                <h4>Eye Lashes Treatement</h4>
                                <p>We treat eyelashes and also install high quality lashes</p>
                            </div><!-- end issue -->

                            <div class="service-wrap lastchild clearfix">
                                <img src="uploads/Wah.png" alt="" class="img-responsive img-rounded alignleft">
                                <h4>hair wash</h4>
                                <p>We wash hair and skulp massage.</p>
                            </div><!-- end issue -->
                        </div><!-- end col -->
                    </div>

                    <hr class="invis4">

                    <div class="text-center">
                        <a href="BookAppointments.aspx" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">APPOINTMENT NOW</a>
                    </div>
                </div><!-- end container -->
            </div><!-- end section -->

</asp:Content>

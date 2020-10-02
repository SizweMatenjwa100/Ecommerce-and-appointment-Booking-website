<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SalonWebApp2.THome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">       

<div class="section wb">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="message-box">
                                <h4>About</h4>
                                <h2>Welcome to EMANGWENI SALON</h2>
                                <p class="lead">We are a beauty shop that has diverse services, from hair treatment and styling to sale of products not to mention a dedicated Spar for you ultimate leisure.</p>

                                <p> The Emangweni Health and Hair Zone is a modern full service salon offering variety of services. We mostly specialize in creative hair cutting, hair colouring, and make-up, nail stylish and waxing. We also have a Spa for a relaxing and soothing massage by proffessionals. The customer’s satisfaction is our primary goal. All our service and products are affordable and is of outmost best quality for fraction of the price, we have promos to our reward our customers. 

Emangweni Hair Zone is situated at the Scottsville Mall next to KFC. We have a comfortable environment that will make you surely feel welcomed. Every beautician has their own working desk area for them to focus on their work. Additionally we have products available for their customers to buy to extend the service we have rendered to them.
 </p>

                                <a href="#services" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Learn More</a>
                            </div><!-- end messagebox -->
                        </div><!-- end col -->
                    </div><!-- end row -->
					<br/><br/><br/><br/><br/>
					<hr class="hr1"> 
					
					<div class="row">
						<div class="col-md-12">
							<div class="about-tab">
								<ul class="nav nav-tabs">
									<li class="active"><a href="#tab_a" data-toggle="tab">Our Mission</a></li>
									<li><a href="#tab_b" data-toggle="tab">Why Us?</a></li>
									<li><a href="#tab_c" data-toggle="tab">About Us</a></li>								
								</ul>
								<div class="tab-content">
									<div class="tab-pane fade in active" id="tab_a">
										<p>Our primary mission is to provide the highest level of customer service to each client, thereby establishing a long lasting relationship of trust and commitment. Our expertise and professionalism allows us to provide clients with the utmost beauty experience!</p>
										<p> EMANGWENI SALON proffesionals do all that we can to ensure that every client has a marvelous experience. We create a warm, caring environment both for our clients and for each other. We offer a full range of cutting edge salon services and products. We value our community and we will work to grow together. We hold ourselves accountable for exceeding our clients high expectations and recognize every client as our ultimate focus. We believe the actions of one, have the power to change the world.</p>
									</div>
									<div class="tab-pane fade" id="tab_b">
										<p>dicated to the craft of beauty in all aspects, Emagnweni Salon provides a unique guest experience that immediately makes you feel welcome, confident, and comfortable.

Our professional team is experienced in various techniques of hair designing, including haircuts, styling, Balyage, Ombre, highlights, fashion colors, weaves, extensions, and more.

It is our mission to listen to what is important to you, design a unique style around your face shape and lifestyle, and then make sure you know how to recreate your very own style with the correct products and styling techniques.</p>
										<ul>
											<li><i class="fa fa-circle-o" aria-hidden="true"></i>User Experience</li>
											<li><i class="fa fa-circle-o" aria-hidden="true"></i>Full Satisfaction</li>
											<li><i class="fa fa-circle-o" aria-hidden="true"></i>Great Products</li>
											<li><i class="fa fa-circle-o" aria-hidden="true"></i>Great Customer Service</li>
											<li><i class="fa fa-circle-o" aria-hidden="true"></i>100% Customer Oriented</li>
											<li><i class="fa fa-circle-o" aria-hidden="true"></i>Custom Support</li>
										</ul>
									</div>
									<div class="tab-pane fade" id="tab_c">
										<p>Our Passion Is Making People Feel Great, Doing Hair Is How We Get There. 

                                        </p>
									</div>
								</div><!-- tab content -->
							</div>
						</div><!-- end col -->
					</div><!-- end row -->
					
                    <hr class="hr1"> 

                    <div class="row text-center">
                        <div class="col-md-4 col-sm-6 col-xs-12">
                           <div class="service-widget">
                                <div class="post-media wow fadeIn">
                                    <a href="uploads/barber_01.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                    <img src="uploads/barber_01.jpg" alt="" class="img-responsive img-rounded">
                                </div>
                                <h3>Premium Styling by Our Professionals</h3>
                                <p>We use the best hair products to style your hair and we employ proffesionals to take care of you!</p>
                            </div><!-- end service -->
                        </div>

                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="service-widget">
                                <div class="post-media wow fadeIn">
                                    <a href="uploads/barber_02.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                    <img src="uploads/barber_02.jpg" alt="" class="img-responsive img-rounded">
                                </div>
                                <h3>Outstanding Product Store</h3>
                                <p>For superior convience we  have a dedicated store for our customers to buy premium products at the fraction of the price. </p>
                            </div><!-- end service -->
                        </div>

                        <div class="col-md-4 col-sm-6 col-xs-12">
                            <div class="service-widget">
                                <div class="post-media wow fadeIn">
                                    <a href="uploads/barber_03.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                                    <img src="uploads/barber_03.jpg" alt="" class="img-responsive img-rounded">
                                </div>
                                <h3>Emangweni Spar</h3>
                                <p>Fully equiped Spar with oustanding proffessionals to leave you vitalized and renergized through medium of an incredible experince at our massage spar</p>
                            </div><!-- end service -->
                        </div>
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end section -->

            <div id="barbers" class="section lb">
                <div class="container-fluid">
                    <div class="section-title row text-center">
                        <div class="col-md-8 col-md-offset-2">
                        <small>MEET THE TEAM</small>
                        <h3>OUR PROFFESIONALS</h3>
                        <hr class="grd1">
                        <p class="lead"> The dedicated proffesionals respondsible for our clients smile. </p>
                        </div>
                    </div><!-- end title -->

                    <div class="row dev-list text-center">
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                            <div class="widget clearfix">
								<div class="hover-br">
									<img src="uploads/barber_team_01.jpg" alt="" class="img-responsive">
									<div class="social-up-hover">
										<div class="footer-social">
											<a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
										</div>
									</div>
								</div>
                                <div class="widget-title">
                                    <h3>Thokozani Ntuli</h3>
                                    <small>The Founder</small>
                                </div>
                                <!-- end title -->
                                <p>Hello guys, I am Thokozani from Pietermaritzburg, I am senior art director and founder of Emagweni Health and Beauty Company.</p>
                            </div><!--widget -->
                        </div><!-- end col -->

                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                            <div class="widget clearfix">
								<div class="hover-br">
									<img src="uploads/barber_team_03.jpg" alt="" class="img-responsive">
									<div class="social-up-hover">
										<div class="footer-social">
											<a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
										</div>
									</div>
								</div>
                                <div class="widget-title">
                                    <h3> Cindy Khubeka</h3>
                                    <small>The Product Specialist and Dermatologist</small>
                                </div>
                                <!-- end title -->
                                <p>Hello guys, Cindy. I am qualified Dermatologist and product specialis of Emangweni Health and Beauty Market.</p>
                            </div><!--widget -->
                        </div><!-- end col -->

                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                            <div class="widget clearfix">
								<div class="hover-br">
									<img src="uploads/barber_team_02.jpg" alt="" class="img-responsive">
									<div class="social-up-hover">
										<div class="footer-social">
											<a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
											<a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
										</div>
									</div>
								</div>
                                <div class="widget-title">
                                    <h3>Angel Xele</h3>
                                    <small>The Messeuse</small>
                                </div>
                                <!-- end title -->
                                <p>Hello guys, I am Angel Xele. I am senior Messeuse and stylist of the Emangweni Health and Beauty Spar.</p>
                            </div><!--widget -->
                        </div><!-- end col -->
                    </div><!-- end row -->
                </div><!-- end container -->
            </div><!-- end section -->

</asp:Content>



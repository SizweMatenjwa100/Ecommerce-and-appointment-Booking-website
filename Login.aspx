<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SalonWebApp2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

	<title>Login V6</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="imagesLgin/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fontsLogin/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fontsLogin/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="cssLogin/util.css">
	<link rel="stylesheet" type="text/css" href="cssLogin/main.css">
<!--===============================================================================================-->

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-85 p-b-20">
				
					<span class="login100-form-title p-b-70">
						<asp:label id="lblMsg" runat="server" text="Welcome"></asp:label>
					<br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
					</span>
					<span class="login100-form-avatar" 
                        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold">
						<img src="uploads/logodone.jpg" alt="AVATAR">
					</span>
                    
					<div class="wrap-input100 validate-input m-t-85 m-b-35" data-validate = "Enter username">
                
						</span>

                        <asp:TextBox ID="TextBox1" runat="server" Height="73px" Width="382px"></asp:TextBox>
                </div>

					<div class="wrap-input100 validate-input m-b-50" data-validate="Enter password">
						&nbsp;<span class="focus-input100" data-placeholder=""></span><asp:TextBox 
                            ID="TextBox2" TextMode="Password" runat="server" Width="386px"></asp:TextBox>
					</div>

					<div class="container-login100-form-btn">
                        <asp:button runat="server" text="LOG IN" BackColor="#42C919" 
                            BorderStyle="Outset" Height="53px" Width="245px" 
                            onclick="Unnamed1_Click1" />
						</button>
					</div>

					<ul class="login-more p-t-190">
						<li class="m-b-8">
							<span class="txt1">
								Forgot
							</span>

							<a href="#" class="txt2">
								Username / Password?
							</a>
						</li>

						<li>
							<span class="txt1">
								Don’t have an account?
							</span>

							<a href="Regsiter.aspx" class="txt2">
								Sign up
							</a>
						</li>
					</ul>
				
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendorLogin/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorLogin/bootstrap/js/popper.js"></script>
	<script src="vendorLogim/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorLogin/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorLogin/daterangepicker/moment.min.js"></script>
	<script src="vendorLogin/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendorLogin/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="jsLogin/main.js"></script>

</asp:Content>

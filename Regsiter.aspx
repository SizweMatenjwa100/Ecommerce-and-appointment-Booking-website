<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regsiter.aspx.cs" Inherits="SalonWebApp2.Regsiter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Basic -->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Site Metas -->
    <title>EMANGWENI SALON</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .style6
        {
            height: 95px;
            width: 206px;
        }
        .style9
        {
            height: 89px;
            width: 206px;
        }
        .style12
        {
            width: 365px;
            height: 89px;
        }
        .style13
        {
            width: 365px;
            height: 95px;
        }
        .style14
        {
            width: 365px;
        }
        .style15
        {
            width: 206px;
        }
        .style16
        {
            width: 164px;
        }
        .style17
        {
            height: 89px;
            width: 164px;
        }
        .style18
        {
            height: 95px;
            width: 164px;
        }
        .style19
        {
            width: 405px;
        }
    </style>
</head>
</head>
<body class="barber_version">
    <form id="form1" runat="server">
    <!-- END LOADER -->
    <div id="barbers" class="section lb">
        <div class="container-fluid">
            <div class="section-title row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <small>Regsiter to enjoy the benefits of EMANGWENI SALON</small>
                    <h3>
                        Register<br />
                    </h3>
                    <hr class="grd1">
                    <br />
                </div>
                <div>
                    <table table style="width: 98%; height: 377px;">
                        <tr>
                            <td align="left" class="style16" style="font-family: 'Courier New',Courier,monspace;
                                font-size: x-large; font-weight: bold;">
                                <asp:label id="Label1" runat="server" forecolor="Black" text="First Name"></asp:label>
                            </td>
                            <td class="style14" align="left">
                                <asp:textbox id="TextBox1" runat="server" width="150px">
                                </asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="TextBox1"
                                    errormessage="This Field is Required" forecolor="#CC3300"></asp:requiredfieldvalidator>
                            </td>
                            <td align="left" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold" class="style15">
                                <asp:label id="Label5" runat="server" forecolor="Black" text="Password"></asp:label>
                            </td>
                            <td align="left" class="style19">
                                <asp:textbox id="TextBox5" textmode="Password" runat="server" height="29px" ontextchanged="TextBox5_TextChanged">
                                </asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" controltovalidate="TextBox5"
                                    errormessage="This Field is Required" font-size="Medium" forecolor="#CC3300"></asp:requiredfieldvalidator>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td class="style16" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold;" align="left">
                                <asp:label id="Label2" runat="server" forecolor="Black" text="Last Name"></asp:label>
                            </td>
                            <td class="style14" align="left">
                                <asp:textbox id="TextBox2" runat="server" width="150px">
                                </asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="TextBox2"
                                    errormessage="This Field is Required" forecolor="#CC3300"></asp:requiredfieldvalidator>
                            </td>
                            <td class="style16" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold;" align="left">
                                <asp:label runat="server" forecolor="Black" text="Gender"></asp:label>
                            </td>
                            <td align="left" class="style19">
                                <asp:dropdownlist id="DropDownList1" runat="server" height="35px" width="96px">
                                    <asp:listitem>Male</asp:listitem>
                                    <asp:listitem>Female</asp:listitem>
                                </asp:dropdownlist>
                            </td>
                        </tr>
                        <tr>
                            <td class="style17" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold;" align="left">
                                <asp:label id="Label3" runat="server" forecolor="Black" text="Username"></asp:label>
                            </td>
                            <td class="style12" align="left">
                                <asp:textbox id="TextBox3" runat="server" width="150px">
                                </asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="TextBox3"
                                    errormessage="This Field is Required" forecolor="#CC3300"></asp:requiredfieldvalidator>
                            </td>
                            <td align="left" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold" class="style9">
                                <asp:label id="Label6" runat="server" forecolor="Black" text="Home Town"></asp:label>
                            </td>
                            <td align="left" class="style19">
                                &nbsp;<asp:textbox id="TextBox6" runat="server" height="29px"></asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="TextBox6"
                                    errormessage="This Field is Required" font-size="Medium" forecolor="#CC3300"></asp:requiredfieldvalidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold;" align="left">
                                <asp:label id="Label4" runat="server" forecolor="Black" text="Email"></asp:label>
                            </td>
                            <td class="style13" align="left">
                                <asp:textbox id="TextBox4" runat="server" width="150px">
                                </asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="TextBox4"
                                    errormessage="This Field is Required" forecolor="#CC3300"></asp:requiredfieldvalidator>
                            </td>
                            <td align="left" style="font-family: 'Courier New', Courier, monospace; font-size: x-large;
                                font-weight: bold" class="style6">
                                <asp:label id="Label7" runat="server" forecolor="Black" text="Contact Number"></asp:label>
                            </td>
                            <td align="left" class="style19">
                                &nbsp;<asp:textbox id="TextBox7" runat="server" height="29px"></asp:textbox>
                                &nbsp;<asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="TextBox7"
                                    errormessage="This Field is Required" font-size="Medium" forecolor="#CC3300"></asp:requiredfieldvalidator><br />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4">
                                <br />
                                <asp:button id="Button1" runat="server" onclick="Button1_Click" text="Register" height="45px"
                                    width="146px" />
                                <br />
                                <br />
                                <asp:hyperlink id="HyperLink1" navigateurl="Home.aspx" runat="server">GO TO HOME</asp:hyperlink>
                            </td>
                        </tr>
                    </table>
    </form>
    </div>
    <asp:sqldatasource id="SqlDataSource1" runat="server" conflictdetection="CompareAllValues"
        connectionstring="<%$ ConnectionStrings:DBCS %>" deletecommand="DELETE FROM [tblCustomer2] WHERE [Customer_ID] = @original_Customer_ID AND (([Customer_FName] = @original_Customer_FName) OR ([Customer_FName] IS NULL AND @original_Customer_FName IS NULL)) AND (([Customer_LName] = @original_Customer_LName) OR ([Customer_LName] IS NULL AND @original_Customer_LName IS NULL)) AND (([Customer_UserName] = @original_Customer_UserName) OR ([Customer_UserName] IS NULL AND @original_Customer_UserName IS NULL)) AND (([Customer_Gender] = @original_Customer_Gender) OR ([Customer_Gender] IS NULL AND @original_Customer_Gender IS NULL)) AND (([Customer_Contact] = @original_Customer_Contact) OR ([Customer_Contact] IS NULL AND @original_Customer_Contact IS NULL)) AND (([Customer_Email] = @original_Customer_Email) OR ([Customer_Email] IS NULL AND @original_Customer_Email IS NULL)) AND (([Customer_Password] = @original_Customer_Password) OR ([Customer_Password] IS NULL AND @original_Customer_Password IS NULL)) AND (([Customer_Town] = @original_Customer_Town) OR ([Customer_Town] IS NULL AND @original_Customer_Town IS NULL))"
        insertcommand="INSERT INTO [tblCustomer2] ([Customer_FName], [Customer_LName], [Customer_UserName], [Customer_Gender], [Customer_Contact], [Customer_Email], [Customer_Password], [Customer_Town]) VALUES (@Customer_FName, @Customer_LName, @Customer_UserName, @Customer_Gender, @Customer_Contact, @Customer_Email, @Customer_Password, @Customer_Town)"
        oldvaluesparameterformatstring="original_{0}" selectcommand="SELECT * FROM [tblCustomer2]"
        updatecommand="UPDATE [tblCustomer2] SET [Customer_FName] = @Customer_FName, [Customer_LName] = @Customer_LName, [Customer_UserName] = @Customer_UserName, [Customer_Gender] = @Customer_Gender, [Customer_Contact] = @Customer_Contact, [Customer_Email] = @Customer_Email, [Customer_Password] = @Customer_Password, [Customer_Town] = @Customer_Town WHERE [Customer_ID] = @original_Customer_ID AND (([Customer_FName] = @original_Customer_FName) OR ([Customer_FName] IS NULL AND @original_Customer_FName IS NULL)) AND (([Customer_LName] = @original_Customer_LName) OR ([Customer_LName] IS NULL AND @original_Customer_LName IS NULL)) AND (([Customer_UserName] = @original_Customer_UserName) OR ([Customer_UserName] IS NULL AND @original_Customer_UserName IS NULL)) AND (([Customer_Gender] = @original_Customer_Gender) OR ([Customer_Gender] IS NULL AND @original_Customer_Gender IS NULL)) AND (([Customer_Contact] = @original_Customer_Contact) OR ([Customer_Contact] IS NULL AND @original_Customer_Contact IS NULL)) AND (([Customer_Email] = @original_Customer_Email) OR ([Customer_Email] IS NULL AND @original_Customer_Email IS NULL)) AND (([Customer_Password] = @original_Customer_Password) OR ([Customer_Password] IS NULL AND @original_Customer_Password IS NULL)) AND (([Customer_Town] = @original_Customer_Town) OR ([Customer_Town] IS NULL AND @original_Customer_Town IS NULL))">
        <deleteparameters>
                            <asp:Parameter Name="original_Customer_ID" Type="Int32" />
                            <asp:Parameter Name="original_Customer_FName" Type="String" />
                            <asp:Parameter Name="original_Customer_LName" Type="String" />
                            <asp:Parameter Name="original_Customer_UserName" Type="String" />
                            <asp:Parameter Name="original_Customer_Gender" Type="String" />
                            <asp:Parameter Name="original_Customer_Contact" Type="String" />
                            <asp:Parameter Name="original_Customer_Email" Type="String" />
                            <asp:Parameter Name="original_Customer_Password" Type="String" />
                            <asp:Parameter Name="original_Customer_Town" Type="String" />
                        </deleteparameters>
        <insertparameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="Customer_FName" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="Customer_LName" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox3" Name="Customer_UserName" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="Customer_Gender" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TextBox7" Name="Customer_Contact" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox4" Name="Customer_Email" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="TextBox5" Name="Customer_Password" 
                                PropertyName="Text" Type="String" />
                            <asp:ControlParameter Name="Customer_Town" Type="String" ControlID="TextBox6" 
                                PropertyName="Text" />
                        </insertparameters>
        <updateparameters>
                            <asp:Parameter Name="Customer_FName" Type="String" />
                            <asp:Parameter Name="Customer_LName" Type="String" />
                            <asp:Parameter Name="Customer_UserName" Type="String" />
                            <asp:Parameter Name="Customer_Gender" Type="String" />
                            <asp:Parameter Name="Customer_Contact" Type="String" />
                            <asp:Parameter Name="Customer_Email" Type="String" />
                            <asp:Parameter Name="Customer_Password" Type="String" />
                            <asp:Parameter Name="Customer_Town" Type="String" />
                            <asp:Parameter Name="original_Customer_ID" Type="Int32" />
                            <asp:Parameter Name="original_Customer_FName" Type="String" />
                            <asp:Parameter Name="original_Customer_LName" Type="String" />
                            <asp:Parameter Name="original_Customer_UserName" Type="String" />
                            <asp:Parameter Name="original_Customer_Gender" Type="String" />
                            <asp:Parameter Name="original_Customer_Contact" Type="String" />
                            <asp:Parameter Name="original_Customer_Email" Type="String" />
                            <asp:Parameter Name="original_Customer_Password" Type="String" />
                            <asp:Parameter Name="original_Customer_Town" Type="String" />
                        </updateparameters>
    </asp:sqldatasource>

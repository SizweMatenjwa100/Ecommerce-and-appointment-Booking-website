<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true"
    CodeBehind="OurProducts.aspx.cs" Inherits="SalonWebApp2.TestForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div id="services" class="section lb">
        <div class="container-fluid">
            <div class="section-title row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h3>
                        OUR PRODUCTS</h3>
                    <hr class="grd1">
                    <p class="lead">
                        Our Salon welcomes every person to come and experience the services we have to offer
                        within an environment that will allow you to relax and ejoy our professionally designed
                        products.</p>
                </div>
            </div>
            <!-- end title -->
        </div>
        <div>
        </div>
        <div style="padding: 5%;">
            <table>
                <tr style="border-bottom: 5px solid red;;">
                    <td>
                        <table>
                            <tr align="center">
                                <th>
                                    Weave
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:repeater id="RptProducts" runat="server">
                                        <itemtemplate>
        <div class="col-md-6">
        <div class="service-wrap clearfix">
                                <a href="MenuItem.aspx?id=<%# Eval("Product_ID") %>"><img src='<%# Eval("Product_Image") %>' alt="" class="img-responsive img-rounded alignleft"/></a>
                                <h4><asp:Label id="lblPName" runat="server" Text='<%# Eval("Product_Name") %>' ></asp:Label></h4>
                                <p><asp:Label id="lblPDiscription" runat="server" Text='<%# Eval("Product_Discription") %>' ></asp:Label></p>
                            </div></div>

        </itemtemplate>
                                    </asp:repeater>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr align="center">
                                <th>
                                    Remy
                                </th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:repeater id="RptProducts2" runat="server">
                                        <itemtemplate>
        <div class="col-md-6">
        <div class="service-wrap clearfix">
                                <a href="MenuItem.aspx?id=<%# Eval("Product_ID") %>"><img src='<%# Eval("Product_Image") %>' alt="" class="img-responsive img-rounded alignleft"/></a>
                                <h4><asp:Label id="lblPName" runat="server" Text='<%# Eval("Product_Name") %>' ></asp:Label></h4>
                                <p><asp:Label id="lblPDiscription" runat="server" Text='<%# Eval("Product_Discription") %>' ></asp:Label></p>
                            </div></div>

        </itemtemplate>
                                    </asp:repeater>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <br />
    </div>
</asp:content>

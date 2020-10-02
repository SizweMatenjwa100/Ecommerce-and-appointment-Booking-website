<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true" CodeBehind="ViewMyOrder.aspx.cs" Inherits="SalonWebApp2.ViewMyOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link rel="stylesheet" href="css/StyleSheet2.css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="services" class="section lb">
        <div class="container-fluid">
            <div class="section-title row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h3>
                        <asp:label id="lblMsg" runat="server" text="Shopping Cart"></asp:label>
                        </h3>
                    <hr class="grd1">
                </div>
            </div>
            <!-- end title -->
        </div>
        <asp:repeater id="RptProducts" runat="server">
                    <itemtemplate>
        <div class="col-md-6">
        <div class="service-wrap clearfix">
                                <img src='<%# Eval("Product_Image") %>' alt="" class="img-responsive img-rounded alignleft"/>
                                <h4><asp:Label id="lblPName" runat="server" Text='<%# Eval("Product_Name") %>' ></asp:Label></h4>
                                <p>
                                <asp:Label id="lblPDiscription" runat="server" Text='<%# Eval("Product_Discription") %>' ></asp:Label>
                                <br/>
                                Price&nbsp:&nbsp 
                                R<asp:Label id="lblPPrice" runat="server" Text='<%# Eval("Product_Price") %>' ></asp:Label>

                                <br/>
                                Quantity&nbsp:&nbsp 
                                <asp:Label id="lblPQuantity" runat="server" Text='<%# Eval("quantity") %>' ></asp:Label>
                                
                                </p>
                            </div></div>


        </itemtemplate>
                </asp:repeater>
    </div>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                
                    <br/><br/><br/>
</asp:Content>

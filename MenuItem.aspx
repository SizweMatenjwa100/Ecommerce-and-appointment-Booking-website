<%@ Page Title="" Language="C#" MasterPageFile="~/Salon.Master" AutoEventWireup="true"
    CodeBehind="MenuItem.aspx.cs" Inherits="SalonWebApp2.MenuItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>
                <asp:repeater id="RptProducts" runat="server">
                    <itemtemplate>
        <div class="col-md-6">
        <div class="service-wrap clearfix">
                                <img src='<%# Eval("Product_Image") %>' alt="" class="img-responsive img-rounded alignleft"/>
                                <h4><asp:Label id="lblPName" runat="server" Text='<%# Eval("Product_Name") %>' ></asp:Label></h4>
                                <p>
                                <asp:Label id="lblPDiscription" runat="server" Text='<%# Eval("Product_Discription") %>' ></asp:Label><br/>
                                <asp:Label Font-Bold="True" runat="server" Text="Price: R"></asp:Label><asp:Label id="lblPPrice" runat="server" Font-Bold="True" Text='<%# Eval("Product_Price") %>' ></asp:Label>
                                </p>
                            </div></div>


        </itemtemplate>
                </asp:repeater>
            </td>
            <td style="padding-right: 50%">
            <div align="center" style="width: 379px; height: 184px">
                <asp:button id="AddToCart" runat="server" text="Add To Cart" BackColor="#99CCFF"
                    style="border: solid 1px #ddd" height="40px" width="200px" onClientClick = "return confirm('Would you like to Purchase this item?')" 
                    onclick="btnViewMyOrder_Click" PostBackUrl="~/MenuItem.aspx" />
                    <br/><br/>
                    <asp:button id="ViewMyOrder" runat="server" text="View My Order" BackColor="#99CCFF"
                    style="border: solid 1px #ddd" height="40px" width="200px" 
                    onclick="ViewMyOrder_Click"/>

                    <br />
                <br />

                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/OurProducts.aspx" 
        runat="server" Font-Bold="True" Font-Size="Large" BackColor="#99CCFF" style="padding: 1%; margin: auto;">
                    Buy More Items</asp:HyperLink>

                    </div>
            </td>
        </tr>
    </table>
</asp:content>

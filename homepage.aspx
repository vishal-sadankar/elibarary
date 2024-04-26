<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="furniture.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <img src="images/home-bg.jpg" class="img-fluid"/>
    </section>

    <section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2>Our Feature</h2>
                <p><b>-Our 3 Primary Featured-</b></p>
                </center>     
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <center><img src="images/digital-inventory.png" width="150px"/>
                <h4> Digital Book Inventory </h4>
                </center>
            </div>
            <div class="col-md-4">
                <center><img src="images/search-online.png" width="150px"/>
                <h4> Search Books </h4>
                </center>
            </div>
            <div class="col-md-4">
                <center><img src="images/defaulters-list.png" width="150px" />
                <h4> Defaulter Lists </h4>
                </center>
            </div>
        </div>
    </div>    
    </section>
    
    <section>
            <img src="images/in-homepage-banner.jpg" class="img-fluid" />
            </section>

    <section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2>Our Process</h2>
                <p><b>-We have a 3 steps process-</b></p>
                </center>     
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <center>
                    <img src="images/sign-up.png" width="150px" />
                    <h4> Sign in </h4>
                </center>
            </div>
            <div class="col-md-4">
                <center><img src="images/search-online.png" width="150px"/>
                <h4> Search Books </h4>
                </center>
            </div>
            <div class="col-md-4">
                <center>
                    <img src="images/library.png"width="150px" />
                    <h4> Defaulter Lists </h4>
                </center>
            </div>
        </div>
    </div>    
    </section>

</asp:Content>

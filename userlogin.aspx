<%@ Page Title="User Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="furniture.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Mamber Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Member Id</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtmemberid"
                                        placeholder=" Enter Member Id" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtpassword"
                                        placeholder=" Enter Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <div class="form-group">
                                    <a href="usersignup.aspx">
                                        &nbsp;</a></div>
                            </div>
                        </div>
                    </div>

                </div>
                <a href="homepage.aspx"> << Back to Home</a>
            </div>
        </div>
    </div>

</asp:Content>

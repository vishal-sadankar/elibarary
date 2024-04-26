<%@ Page Title="User Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="furniture.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <span>Account status-</span>
                                    <asp:label class="badge bg-info text-dark" text="Your status" runat="server" />
                                    </asp:label>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtname"
                                        placeholder=" Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1"
                                        placeholder=" Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact Number</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2"
                                        placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3"
                                        placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Full Address</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox4"
                                        placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox5"
                                        placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Pin-code</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox6"
                                        placeholder="Pin-code" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <span class="badge bg-info text-dark">Login Credentials</span>
                                    </div>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>User ID</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox7"
                                        placeholder="User ID" readonly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label> Old Password</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox8"
                                        placeholder="Old Password" TextMode="Password" readonly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label> New Password</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox9"
                                        placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group col-8 mx-auto ">
                            <center>
                            <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" />
                       </center>
                                </div>
                    </div>
                </div> 
                <a href="homepage.aspx"><< Back to Home</a>
            </div> 
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="120px" src="images/books1.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <asp:label class="badge bg-info text-dark" text="Yoyr Books Info" runat="server" />
                                    </asp:label>
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
                                <asp:GridView class="table table-striped table-bordered" runat="server"></asp:GridView>
                            </div>
                        </div>
                     </div> 
                    </div>
            </div>
        </div>
    </div>

</asp:Content>

<%@ Page Title="Member Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="furniture.adminmembermanagement" %>

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
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Member ID</label>
                                    <div class="input-group">

                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtname"
                                            placeholder="Member ID"></asp:TextBox>
                                        <asp:Button runat="server" ID="button1" CssClass="btn btn-primary" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1"
                                        placeholder="Full Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Account Status</label>
                                    <div class="input-group">

                                        <asp:TextBox runat="server" CssClass="form-control mr-1" ID="TextBox6"
                                            placeholder="Account Status" ReadOnly="true"></asp:TextBox>
                                        <asp:LinkButton Class="btn btn-success btn-ls mr-1" ID="LinkButton1" runat="server"><i class="fa-regular fa-circle-check"></i></asp:LinkButton>
                                        <asp:LinkButton Class="btn btn-warning btn-ls mr-1" ID="LinkButton2" runat="server"><i class="fa-regular fa-circle-pause"></i></asp:LinkButton>
                                        <asp:LinkButton Class="btn btn-danger btn-lsmr-1" ID="LinkButton3" runat="server"><i class="fa-regular fa-circle-xmark"></i></asp:LinkButton>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Date of Birth</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2"
                                        placeholder="Date of Birth" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Contact</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3"
                                        placeholder="Contact" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Email ID</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox7"
                                        placeholder="Email ID" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <div class="form-group">
                                    <label>Full Address</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox8"
                                        placeholder="Full Address" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>City</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox4"
                                        placeholder="City" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Pin-Code</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox5"
                                        placeholder="End Date" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-12">
                                <asp:Button CssClass="btn btn-danger btn-lg btn-block" ID="Button2" runat="server" Text="Delete User Permanently" />
                            </div>
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
                                    <h4>Members List</h4>
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

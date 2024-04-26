<%@ Page Title="Book Issue" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="furniture.adminbookissuing" %>
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
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/books.png" />
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
                                    <label>Mamber ID</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1"
                                        placeholder="Mamber ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book ID</label>
                                    <div class="input-group">
                                    
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtname"
                                        placeholder="Book ID"></asp:TextBox>
                                    <asp:Button runat="server" ID="button1" CssClass="btn btn-primary" Text="Go" />
                                </div>
                                    </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Mamber Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2"
                                        placeholder="Mamber Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3"
                                        placeholder="Book Name" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox4"
                                        placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>End Date</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox5"
                                        placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-6">
                                <asp:Button CssClass="btn btn-primary btn-lg btn-block" ID="Button2" runat="server" Text="Issue" />
                            </div>
                            <div class="col-6">
                                <asp:Button CssClass="btn btn-success btn-lg btn-block" ID="Button3" runat="server" Text="Return" />
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
                                    <h4>Issued Book List</h4>
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

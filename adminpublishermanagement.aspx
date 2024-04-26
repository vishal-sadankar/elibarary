<%@ Page Title="Publisher Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="furniture.adminpublishermanagement" %>
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
                                    <h4>Publisher Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="images/publisher.png" />
                                </center>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Publisher ID</label>
                                    <div class="input-group">
                                    
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtname"
                                        placeholder=" Publisher ID"></asp:TextBox>
                                    <asp:Button runat="server" ID="button1" CssClass="btn btn-secondary" Text="Go" />
                                </div>
                                    </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Publisher Name</label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TextBox1"
                                        placeholder="Publisher Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-success btn-lg btn-block" ID="Button2" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-warning btn-lg btn-block" ID="Button3" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button CssClass="btn btn-danger btn-lg btn-block" ID="Button4" runat="server" Text="Delete" />
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
                                    <h4>Publisher List</h4>
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

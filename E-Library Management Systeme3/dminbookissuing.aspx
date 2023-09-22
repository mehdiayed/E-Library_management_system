<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dminbookissuing.aspx.cs" Inherits="E_Library_Management_Systeme3.dminbookissuing" %>
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
                                    <img width="100px" src="imgs/book2.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book issuing</h4>
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>

                            <div class="col">
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>book ID</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Auther ID" runat="server"></asp:TextBox>
                                                <asp:Button ID="Button2" class="btn btn-secondary" runat="server" Text="Find" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Member ID</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Auther name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Member Name</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="Auther name" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>book Name</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="Auther name" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Start Date</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Auther name" runat="server" TextMode="Date"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>End Date</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBox6" CssClass="form-control" placeholder="Auther name" runat="server" TextMode="Date"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <center>
                                                <asp:Button ID="Button6" class="btn btn-outline-primary btn-block" runat="server" Text="Issue" />
                                            </center>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <center>
                                                <asp:Button ID="Button7" class="btn btn-outline-success btn-block " runat="server" Text="Return" />
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx">< < Back to home page</a>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/return.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author list  </h4>
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="col">
                                <center>
                                    <hr />
                                </center>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="E_Library_Management_Systeme3.userprofile" %>
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
                                    <img width="100px" src="imgs/sign-up.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your profile </h4>
                                    <span>Account status - </span>
                                    <asp:Label ID="Label1" class="badge badge-pill badge-info" runat="server" Text="Your status"></asp:Label>
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
                                        <label>Full Name</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Date of birth</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" placeholder="Date of birth" runat="server" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Contatct Number </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" placeholder="number max length 8 " runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Email</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox2" CssClass="form-control" placeholder="your Email " runat="server" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>State </label>
                                        <div class="form-group">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">
                                                <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                                <asp:ListItem Text="Nabeul" Value="Nabeul"></asp:ListItem>
                                                <asp:ListItem Text="Tunis" Value="Tunis"></asp:ListItem>
                                                <asp:ListItem Text="Ariana" Value="Ariana"></asp:ListItem>
                                                <asp:ListItem Text="Ben Arous" Value="Ben Arous"></asp:ListItem>
                                                <asp:ListItem Text="Sousse" Value="Sousse"></asp:ListItem>
                                                <asp:ListItem Text="Monastir" Value="Monastir"></asp:ListItem>
                                                <asp:ListItem Text="Mahdia" Value="Mahdia"></asp:ListItem>
                                                <asp:ListItem Text="Sfax" Value="Sfax"></asp:ListItem>
                                                <asp:ListItem Text="Gabes" Value="Gabes"></asp:ListItem>
                                                <asp:ListItem Text="Medenine" Value="Medenine"></asp:ListItem>
                                                <asp:ListItem Text="Tataouine" Value="Tataouine"></asp:ListItem>
                                                <asp:ListItem Text="Kebili" Value="Kebili"></asp:ListItem>
                                                <asp:ListItem Text="Tozeur" Value="Tozeur"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>City</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox7" CssClass="form-control" placeholder="city" runat="server" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Pin CODE</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox6" CssClass="form-control" placeholder="your Email " runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" textmode="MultiLine">
                                    <div class="col">
                                        <label>Full adresss </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox5" CssClass="form-control" placeholder="Full adress . . ." runat="server" TextMode="Number" Rows="2"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <center><span class="badge badge-pill badge-info">Login cridantals</span> </center>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>User ID </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox8" CssClass="form-control" placeholder="number max length 8 " runat="server" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Password</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox9" CssClass="form-control" placeholder="your password " runat="server" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>New Password</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox10" CssClass="form-control" placeholder="your new Password " runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="col">
                                <center>
                                    <div class="form-group">
                                        <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Update" />
                                    </div>
                                </center>

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
                                    <img width="100px" src="imgs/book.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books </h4>
                                    <asp:Label ID="Label2" class="badge badge-pill badge-info" runat="server" Text="Your books info"></asp:Label>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="E_Library_Management_Systeme3.adminlogin" %>
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
                                    <img width="75px" src="imgs/user2.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login </h3>
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
                                <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                </div>
                                <label>Admin Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxPassword" CssClass="form-control" placeholder="Member Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
                <a href="homepage.aspx">< < Back to home page</a>
            </div>
        </div>
    </div>
    <br />

    <br />

</asp:Content>

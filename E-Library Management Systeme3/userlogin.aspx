<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="E_Library_Management_Systeme3.userlogin" %>
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
                                    <img width="75px" src="imgs/user.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login </h3>
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
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxMemberID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                </div>
                                <label>Member Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBoxPassword" CssClass="form-control" placeholder="Member Password" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                <div class="form-group">
                                    <a href="usersignup.aspx">
                                        <asp:Button ID="Button3" class="btn btn-info btn-block btn-lg" runat="server" Text="Sign Up" OnClick="Button3_Click" />
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_Library_Management_Systeme3.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
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
                                    <h4>Member Sign Up </h4>
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
                                            <asp:TextBox ID="TextBoxfullname" CssClass="form-control" placeholder="Full Name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Date of birth</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxdateofbirth" CssClass="form-control" placeholder="Date of birth" runat="server" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Contatct Number </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxcontactnumber" CssClass="form-control" placeholder="number max length 8 " runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Email</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxemail" CssClass="form-control" placeholder="your Email " runat="server" TextMode="Email"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>State </label>
                                        <div class="form-group">
                                            <asp:DropDownList CssClass="form-control" ID="DropDownListstate" runat="server">
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
                                            <asp:TextBox ID="TextBoxcity" CssClass="form-control" placeholder="city" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Pin CODE</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxpincode" CssClass="form-control" placeholder="your Email " runat="server" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row" >
                                    <div class="col">
                                        <label>Full adresss </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxfulladress" CssClass="form-control" placeholder="Full adress . . ." runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <center> <span class="badge badge-pill badge-info">Login cridantals</span> </center>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>User ID </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxuserid" CssClass="form-control" placeholder="number max length 8 " runat="server" TextMode="SingleLine"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Password</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxpassword" CssClass="form-control" placeholder="your Email " runat="server" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="col">                              
                                <div class="form-group">
                                    <a href="usersignup.aspx">
                                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
<%--                                        <input id="Button2" class="btn btn-success btn-block btn-lg" type="button" value="Sign Up" Onclick="Button2_Click"/></a>--%>
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

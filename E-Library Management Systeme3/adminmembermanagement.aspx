<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_Library_Management_Systeme3.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">
      $(document).ready(function () {
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
      });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/user.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>MemberDetails</h4>
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
                                    <div class="col-md-2">
                                        <label>Member ID</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBoxID" CssClass="form-control" placeholder="Member ID" runat="server"></asp:TextBox>
                                                <asp:LinkButton ID="LinkButton4" runat="server" class="btn btn-secondary" OnClick="LinkButton4_Click"><i class="fa-solid fa-magnifying-glass"></i></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Full Name ID</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxFullName" CssClass="form-control" placeholder="Full name" runat="server" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <label>Account status</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBoxAccountStatus" CssClass="form-control mr-1" placeholder="Account status" runat="server" ReadOnly="True"></asp:TextBox>
                                                <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-success mr-1" OnClick="LinkButton1_Click"><i class="fa-solid fa-circle-check"></i></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton3" runat="server" class="btn btn-warning mr-1 " OnClick="LinkButton3_Click"><i class="fa-solid fa-circle-pause"></i></asp:LinkButton>
                                                <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-danger mr-1" OnClick="LinkButton2_Click"><i class=" fa-solid fa-circle-xmark"></i></asp:LinkButton>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>DOB</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBoxDOB" CssClass="form-control" placeholder="DOB" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Contact Number</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBoxCN" CssClass="form-control" placeholder="Contact Number" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Email</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBoxEmail" CssClass="form-control" placeholder="Email" runat="server" ReadOnly="True" TextMode="Email" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>State</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBoxState" CssClass="form-control" placeholder="Sate" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>City</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBoxCity" CssClass="form-control" placeholder="City" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Pin Code</label>
                                            <div class="form-group">
                                                <asp:TextBox ID="TextBoxPinCode" CssClass="form-control" placeholder="Pin code" runat="server" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Full adresss </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxFullAdress" CssClass="form-control" placeholder="Full adress . . ." runat="server" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-8 mx-auto">
                                        <div class="form-group">
                                            <center>
                                                <asp:Button ID="Button6" class="btn btn-danger btn-block" runat="server" Text="Delete User Perminatly" OnClick="Button6_Click" />
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
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/team.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member list  </h4>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElibraryDataBaseConnectionString %>" SelectCommand="SELECT * FROM [member_table]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
</asp:Content>

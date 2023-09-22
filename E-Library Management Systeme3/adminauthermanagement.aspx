<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthermanagement.aspx.cs" Inherits="E_Library_Management_Systeme3.adminauthermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script type="text/javascript">

      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/writer.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Auther Details</h4>
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
                                    <div class="col-md-4">
                                        <label>Auther ID</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBoxID" CssClass="form-control" placeholder="Auther ID" runat="server"></asp:TextBox>
                                                <asp:Button ID="Button2" class="btn btn-secondary" runat="server" Text="Find" OnClick="Button2_Click" />

                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <label>Auther Name</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxName" CssClass="form-control" placeholder="Auther name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <center>
                                                <asp:Button ID="Button3" class="btn btn-success" runat="server" Text="Save" OnClick="Button3_Click" />
                                            </center>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <center>
                                                <asp:Button ID="Button4" class="btn btn-warning" runat="server" Text="Update" OnClick="Button4_Click" />
                                            </center>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <center>
                                                <asp:Button ID="Button5" class="btn btn-danger" runat="server" Text="Delete" OnClick="Button5_Click" />
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
                            <img width="100px" src="imgs/database.png" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElibraryDataBaseConnectionString %>" ProviderName="<%$ ConnectionStrings:ElibraryDataBaseConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [auther_table]"></asp:SqlDataSource>
                <div class="col">
                    <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="auther_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="auther_id" HeaderText="auther_id" ReadOnly="True" SortExpression="auther_id" />
                                <asp:BoundField DataField="auther_name" HeaderText="auther_name" SortExpression="auther_name" />
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

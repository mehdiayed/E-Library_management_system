<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="E_Library_Management_Systeme3.adminpublishermanagement" %>
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
                                  <img width="100px" src="imgs/paper-plane.png" />
                                  <br />
                                  <br />
                              </center>
                          </div>
                      </div>
                      <div class="row">
                          <div class="col">
                              <center>
                                  <h4>Publisher Details</h4>
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
                                      <label>Publisher ID</label>
                                      <div class="form-group">
                                          <div class="input-group">
                                              <asp:TextBox ID="TextBoxID" CssClass="form-control" placeholder="Auther ID" runat="server"></asp:TextBox>
                                              <asp:Button ID="Button2" class="btn btn-secondary" runat="server" Text="Find" OnClick="Button2_Click" />

                                          </div>
                                      </div>
                                  </div>
                                  <div class="col-md-8">
                                      <label>Publisher Name</label>
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
                          <h4>Publisher list  </h4>
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
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElibraryDataBaseConnectionString %>" SelectCommand="SELECT * FROM [publisher_table]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
              <div class="col">
                  <div class="col">
                      <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                  </div>
              </div>
          </div>
      </div>
  </div>
  </div>
  </div>

  <br />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventorypage.aspx.cs" Inherits="E_Library_Management_Systeme3.adminbookinventorypage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 <script type="text/javascript">
     $(document).ready(function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
     });

     function readURL(input) {
         if (input.files && input.files[0]) {
             var reader = new FileReader();

             reader.onload = function (e) {
                 $('#imgview').attr('src', e.target.result);
             };

             reader.readAsDataURL(input.files[0]);
         }
     }

 </script>
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
                                    <img width="100px" id="imgview" src="book_inventory/book.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Details</h4>
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
                            <div class="row">
                                <div class="col">
                                    <div class="col">

                                        <asp:FileUpload ID="FileUpload1" onchange="readURL(this)" CssClass="form-control" runat="server" />
                                    </div>
                                </div>

                            </div>
                            <div class="col">
                                <div class="row">
                                    <div class="col-md-3">
                                        <label>Book ID</label>
                                        <div class="form-group">
                                            <div class="input-group">
                                                <asp:TextBox ID="TextBoxBookID" CssClass="form-control" placeholder="Book ID" runat="server"></asp:TextBox>
<%--                                                <asp:LinkButton ID="LinkButton4" runat="server" class="btn ml-1 btn-primary"><i class="fa-solid fa-magnifying-glass"></i></asp:LinkButton>--%>
                                                <asp:Button ID="Button4" class="btn form-control btn-primary" runat="server" Text="Go" OnClick="Button4_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <label>Book Name </label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxBookName" CssClass="form-control" placeholder="Full name" runat="server" ReadOnly="False"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Language</label>
                                            <div class="form-group">
                                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                                    <asp:ListItem Text="English" Value="English" />
                                                    <asp:ListItem Text="Arabic" Value="Arabic" />
                                                    <asp:ListItem Text="French" Value="French" />
                                                    <asp:ListItem Text="German" Value="German" />

                                                </asp:DropDownList>
                                            </div>
                                            <label>Publisher Name</label>
                                            <div class="form-group">
                                                <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                                 
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Author Name</label>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                                    
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <label>Publish Date</label>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBoxDate" CssClass="form-control" placeholder="Sate" runat="server" ReadOnly="False" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Genre</label>
                                        <div class="form-group">
                                            <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                                <asp:ListItem Text="Action" Value="Action" />
                                                <asp:ListItem Text="Adventure" Value="Adventure" />
                                                <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                                <asp:ListItem Text="Self Help" Value="Self Help" />
                                                <asp:ListItem Text="Motivation" Value="Motivation" />
                                                <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                                <asp:ListItem Text="Wellness" Value="Wellness" />
                                                <asp:ListItem Text="Crime" Value="Crime" />
                                                <asp:ListItem Text="Drama" Value="Drama" />
                                                <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                                <asp:ListItem Text="Horror" Value="Horror" />
                                                <asp:ListItem Text="Poetry" Value="Poetry" />
                                                <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                                <asp:ListItem Text="Romance" Value="Romance" />
                                                <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                                <asp:ListItem Text="Suspense" Value="Suspense" />
                                                <asp:ListItem Text="Thriller" Value="Thriller" />
                                                <asp:ListItem Text="Art" Value="Art" />
                                                <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                                <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                                <asp:ListItem Text="Health" Value="Health" />
                                                <asp:ListItem Text="History" Value="History" />
                                                <asp:ListItem Text="Math" Value="Math" />
                                                <asp:ListItem Text="Textbook" Value="Textbook" />
                                                <asp:ListItem Text="Science" Value="Science" />
                                                <asp:ListItem Text="Travel" Value="Travel" />
                                            </asp:ListBox>
                                        </div>

                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Edition</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxEdition" runat="server" placeholder="Edition"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Book Cost(per unit)</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxcost" runat="server" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Pages</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxPages" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <label>Actual Stock</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxActualStock" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Current Stock</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxCurrentStock" runat="server" placeholder="Book Cost(per unit)" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <label>Issued Books</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxIssuedBooks" runat="server" placeholder="Pages" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <label>Book Description</label>
                                        <div class="form-group">
                                            <asp:TextBox CssClass="form-control" ID="TextBoxBookDescription" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-4">
                                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                                    </div>
                                    <div class="col-4">
                                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                                    </div>
                                    <div class="col-4">
                                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <br />
                </div>
                <a href="homepage.aspx">< < Back to home page</a>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/inventory.png" />
                                    <br />
                                    <br />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4> Book Inventory List </h4>
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ElibraryDataBaseConnectionString %>" SelectCommand="SELECT * FROM [book_tabe]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" />

                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Author<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                                    &nbsp;| Genre
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                                    &nbsp;Language
                                                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                                </div>
                                                                <div class="col-12">
                                                                    Publisher -
                                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                                    &nbsp;| Publish date -
                                                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                                    &nbsp;| pages -
                                                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                                    &nbsp;| Edition -
                                                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                                </div>

                                                            </div>

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Cost -
                                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                                    &nbsp;| Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                                    &nbsp;| Available Stock -
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                                </div>

                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                                </div>

                                                            </div>

                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image ID="Image1" class="img-fluid" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

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

using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace E_Library_Management_Systeme3
{
    public partial class adminlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM admin_login_table where username=@member_id and password=@password;", con);

                cmd.Parameters.AddWithValue("@member_id", TextBoxMemberID.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBoxPassword.Text.Trim());

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Loggin Successful');</script>");
                        Session["userid"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(0).ToString();
                        Session["role"] = "admin";
                        //Session["status"] = dr.GetValue(10).ToString();

                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}
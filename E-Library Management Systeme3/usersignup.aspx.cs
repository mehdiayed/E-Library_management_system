using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace E_Library_Management_Systeme3
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // Signing up 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckExistanceMember())
            {
                Response.Write("<script>alert('Member Already existe with this id');</script>");
            }
            else
            {

                signUpMember();
            }

        }

        // user defined method
        bool CheckExistanceMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_table where member_id='" + TextBoxuserid.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }



        void signUpMember()
        {
            SqlConnection con = new SqlConnection(strcon);
            try
            {

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into member_table (dob, contact_no, email, state, city, pincode, full_address, member_id, password, account_status) values (@dob, @contact_no, @email, @state, @city, @pincode, @full_address, @member_id, @password, @account_status)\r\n", con);
                cmd.Parameters.AddWithValue("@full_name", TextBoxfullname.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBoxdateofbirth.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBoxcontactnumber.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBoxemail.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownListstate.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBoxcity.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBoxpincode.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBoxfulladress.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBoxuserid.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBoxpassword.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign up has ben done successfully');</script>");
                Response.Redirect("userlogin.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace E_Library_Management_Systeme3
{
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            getMemberByID();

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            deleteMemberByID();
        }
        //active
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("active");
        }
        // paused
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("pending");

        }
        // suspended
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("deactive");

        }
        //delete

        // other functions 
        bool checkIfMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from member_table where member_id='" + TextBoxID.Text.Trim() + "';", con);
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
        void deleteMemberByID()
        {
            if (checkIfMemberExists())
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE from member_table WHERE member_id='" + TextBoxID.Text.Trim() + "'", con);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }
        // show all detels 
        void getMemberByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from member_table where member_id='" + TextBoxID.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBoxFullName.Text = dr.GetValue(0).ToString();
                        TextBoxDOB.Text = dr.GetValue(1).ToString();
                        TextBoxCN.Text = dr.GetValue(2).ToString();
                        TextBoxEmail.Text = dr.GetValue(3).ToString();
                        TextBoxState.Text = dr.GetValue(4).ToString();
                        TextBoxCity.Text = dr.GetValue(5).ToString();
                        TextBoxPinCode.Text = dr.GetValue(6).ToString();
                        TextBoxFullAdress.Text = dr.GetValue(7).ToString();
                        TextBoxID.Text = dr.GetValue(8).ToString();
                        TextBoxAccountStatus.Text = dr.GetValue(10).ToString();
                    }

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


        // update 
        void updateMemberStatusByID(string status)
        {
            if (checkIfMemberExists())
            {
                try

                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("UPDATE member_table SET account_status='" + status + "' WHERE member_id='" + TextBoxID.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member Status Updated');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }

        }
        void clearForm()
        {
            TextBoxID.Text = "";
            TextBoxFullName.Text = "";
            TextBoxDOB.Text = "";
            TextBoxCN.Text = "";
            TextBoxAccountStatus.Text = "";
            TextBoxEmail.Text = "";
            TextBoxCity.Text = "";
            TextBoxPinCode.Text = "";
            TextBoxState.Text = "";
            TextBoxFullAdress.Text = "";
        }
        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {

        }

    }
}
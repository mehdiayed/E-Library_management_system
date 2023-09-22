using System;

namespace E_Library_Management_Systeme3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] == null || Session["role"].ToString() == "")
                {
                    LinkButtonUserLogin.Visible = true;
                    LinkButtonSignup.Visible = true;

                    LinkButtonLogout.Visible = false;
                    LinkButtonHelloUser.Visible = false;

                    LinkButtonAdminLogin.Visible = true;

                    LinkButtonAuthorManagement.Visible = false;
                    LinkButtonBookInventory.Visible = false;
                    LinkButtonBookIssuing.Visible = false;
                    LinkButtonMemberManagement.Visible = false;
                    LinkButtonPublisherManagement.Visible = false;
                }
                else if (Session["role"].ToString() == "user")
                {
                    LinkButtonUserLogin.Visible = false;
                    LinkButtonSignup.Visible = false;

                    LinkButtonLogout.Visible = true;
                    LinkButtonHelloUser.Text = "Hello " + Session["fullname"].ToString();

                    LinkButtonAdminLogin.Visible = true;

                    LinkButtonAuthorManagement.Visible = false;
                    LinkButtonBookInventory.Visible = false;
                    LinkButtonBookIssuing.Visible = false;
                    LinkButtonMemberManagement.Visible = false;
                    LinkButtonPublisherManagement.Visible = false;
                }
                else if (Session["role"].ToString() == "admin")
                {
                    LinkButtonUserLogin.Visible = false;
                    LinkButtonSignup.Visible = false;

                    LinkButtonLogout.Visible = true;
                    LinkButtonHelloUser.Text = "Hello Admin";

                    LinkButtonAdminLogin.Visible = false;

                    LinkButtonAuthorManagement.Visible = true;
                    LinkButtonBookInventory.Visible = true;
                    LinkButtonBookIssuing.Visible = true;
                    LinkButtonMemberManagement.Visible = true;
                    LinkButtonPublisherManagement.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            // Code à exécuter lorsque LinkButton4 est cliqué
            // Par exemple, vous pouvez rediriger l'utilisateur vers la page "ViewBooks.aspx" ici
            Response.Redirect("ViewBooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            // Code à exécuter lorsque LinkButton1 est cliqué
            // Par exemple, vous pouvez rediriger l'utilisateur vers la page de connexion ici
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            // Code à exécuter lorsque LinkButton2 est cliqué
            // Par exemple, vous pouvez rediriger l'utilisateur vers la page d'inscription ici
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["userid"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButtonUserLogin.Visible = true;
            LinkButtonSignup.Visible = true;

            LinkButtonLogout.Visible = false;
            LinkButtonHelloUser.Visible = false;

            LinkButtonAdminLogin.Visible = true;

            LinkButtonAuthorManagement.Visible = false;
            LinkButtonBookInventory.Visible = false;
            LinkButtonBookIssuing.Visible = false;
            LinkButtonMemberManagement.Visible = false;
            LinkButtonPublisherManagement.Visible = false;
            Response.Redirect("homepage.aspx");

        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            // Code à exécuter lorsque LinkButton7 est cliqué
            // Par exemple, vous pouvez rediriger l'utilisateur vers la page "UserProfile.aspx" ici
            Response.Redirect("UserProfile.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthermanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventorypage.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("dminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }
    }
}
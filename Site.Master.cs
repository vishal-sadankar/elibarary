using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furniture
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(null))
                {
                    linkbutton3.Visible = false; //logout link
                    linkbutton7.Visible = false; //hello user link
                    linkbutton1.Visible = true; //user login
                    linkbutton2.Visible = true; //sign up login

                    linkbutton11.Visible = false; //sign up login
                    linkbutton12.Visible = false; //sign up login
                    linkbutton8.Visible = false; //sign up login
                    linkbutton9.Visible = false; //sign up login
                    linkbutton10.Visible = false; //sign up login

                }
                else if (Session["role"].Equals("user"))
                {
                    linkbutton3.Visible = true; //logout link
                    linkbutton7.Visible = true; //hello user link
                    linkbutton7.Text = "Hello "+Session["fullname"].ToString();
                    linkbutton1.Visible = false; //user login
                    linkbutton2.Visible = false; //sign up login

                    linkbutton11.Visible = false; //sign up login
                    linkbutton12.Visible = false; //sign up login
                    linkbutton8.Visible = false; //sign up login
                    linkbutton9.Visible = false; //sign up login
                    linkbutton10.Visible = false; //sign up login
                }
                else if (Session["role"].Equals("admin"))
                {
                    linkbutton3.Visible = true; //logout link
                    linkbutton7.Visible = true; //hello user link
                    linkbutton7.Text = "Hello Admin";
                    linkbutton1.Visible = false; //user login
                    linkbutton2.Visible = false; //sign up login

                    linkbutton6.Visible = false; //sign up login
                    linkbutton11.Visible = true; //sign up login
                    linkbutton12.Visible = true; //sign up login
                    linkbutton8.Visible = true; //sign up login
                    linkbutton9.Visible = true; //sign up login
                    linkbutton10.Visible = true; //sign up login
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script><alert>('"+ex.Message+"')</script>");
            }
        }

        protected void linkbutton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void linkbutton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void linkbutton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void linkbutton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void linkbutton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void linkbutton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void linkbutton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void linkbutton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void linkbutton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }

        protected void linkbutton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void linkbutton3_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["fullname"] = null;
            Session["role"] = null;
            Session["status"] = null;

            linkbutton3.Visible = false; //logout link
            linkbutton7.Visible = false; //hello user link
            linkbutton1.Visible = true; //user login
            linkbutton2.Visible = true; //sign up login

            linkbutton11.Visible = false; //sign up login
            linkbutton12.Visible = false; //sign up login
            linkbutton8.Visible = false; //sign up login
            linkbutton9.Visible = false; //sign up login
            linkbutton10.Visible = false; //sign up login

            Response.Redirect("homepage.aspx");

        }
    }
}
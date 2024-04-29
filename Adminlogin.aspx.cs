using furniture.Model.DTO;
using furniture.procedures;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furniture
{
    public partial class Adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string CS = @"data source=WIN-J3I83ERGLDV\SQLEXPRESS;database=elibraryDB;trusted_connection=true";
            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand(sdprocedure.ValidateAdmin, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            AdminDTO admin = new AdminDTO()
            {
                adminID=txtadminid.Text,
                password=Txtpassword.Text

            };

            cmd.Parameters.AddWithValue("@username", admin.adminID);
            cmd.Parameters.AddWithValue("@password", admin.password);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Response.Write("<script>alert('Login Successfull');</script>");
                    Session["username"] = reader.GetValue(0).ToString();
                    Session["fullname"] = reader.GetValue(2).ToString();
                    Session["role"] = "admin";
                }
                Response.Redirect("homepage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Unuccessfull');</script>");
            }
            con.Close();

        }
    }
}
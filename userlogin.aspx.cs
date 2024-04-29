using furniture.Model.DTO;
using furniture.procedures;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furniture
{
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string CS = @"data source=WIN-J3I83ERGLDV\SQLEXPRESS;database=elibraryDB;trusted_connection=true";
            SqlConnection con = new SqlConnection(CS);

            SqlCommand cmd = new SqlCommand(sdprocedure.ValidateUser, con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            UserDTO user = new UserDTO()
            {
                member_id = txtmemberid.Text,
                password = txtpassword.Text
            };

            cmd.Parameters.AddWithValue("@member_id", user.member_id);
            cmd.Parameters.AddWithValue("@password", user.password);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Response.Write("<script>alert('Login Successfull');</script>");
                    Session["username"] = reader.GetValue(7).ToString();
                    Session["fullname"] = reader.GetValue(0).ToString();
                    Session["role"] = "user";
                    Session["status"] = reader.GetValue(9).ToString();
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


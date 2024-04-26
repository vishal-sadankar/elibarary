using furniture.Model.DTO;
using furniture.Model.Repository;
using furniture.procedures;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace furniture
{
    public partial class usersignup : System.Web.UI.Page
    {   
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckMemberExits())
            {
                Response.Write("<script>alert('Member already exits use different Member ID');</script>");
            }
            else
            {
                Membersignup();
            }
        }

        bool CheckMemberExits()
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=WIN-J3I83ERGLDV\SQLEXPRESS;database=elibraryDB;trusted_connection=True");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from member_master_tbl where member_id='"+txtmemberid.Text+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count>=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception)
            {

                return false;
            }
            
        }

        void Membersignup()
        {
            UserDTO user = new UserDTO()
            {
                full_name = txtname.Text,
                DOB = txtdob.Text,
                number = txtcontact.Text,
                Email = txtemail.Text,
                full_address = txtfulladd.Text,
                city = txtcity.Text,
                pincode = txtpincode.Text,
                member_id = txtmemberid.Text,
                password = txtpassword.Text
            };
            UserRepository repository = new UserRepository();
            int row = repository.newuser(user);
            if (row == 1)
            {
                Response.Write("<script>alert('Sign Up Successfull. Go to user Login');</script>");

                txtname.Text = string.Empty;
                txtdob.Text = string.Empty;
                txtcontact.Text = string.Empty;
                txtemail.Text = string.Empty;
                txtfulladd.Text = string.Empty;
                txtcity.Text = string.Empty;
                txtpincode.Text = string.Empty;
                txtmemberid.Text = string.Empty;
                txtpassword.Text = string.Empty;
            };
        }

    }
}
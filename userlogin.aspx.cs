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
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           
        }

        void UserDTO validateuser()
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=WIN-J3I83ERGLDV\SQLEXPRESS;database=elibraryDB;trusted_connection=True");

                SqlCommand cmd = new SqlCommand(sdprocedure.ValidateUser, con);

                cmd.Parameters.AddWithValue("@member_id", user.member_id);
                cmd.Parameters.AddWithValue("@password", user.password);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        UserDTO user = new UserDTO()
                        {
                         
                        };
                    }
                }
                con.Close();
            }
            catch (Exception ex)
            {

                return 0;
            }
        };

    }
}

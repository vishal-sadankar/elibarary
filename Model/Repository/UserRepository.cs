using furniture.Model.DTO;
using furniture.procedures;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace furniture.Model.Repository
{
    public class UserRepository
    {
         public int newuser(UserDTO user)
        {
            try
            {

                SqlConnection con = new SqlConnection(@"Data Source=WIN-J3I83ERGLDV\SQLEXPRESS;database=elibraryDB;trusted_connection=True");

                SqlCommand cmd = new SqlCommand(sdprocedure.AddNewUser, con);

                cmd.CommandType = System.Data.CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@full_name", user.full_name);
                cmd.Parameters.AddWithValue("@dob", user.DOB);
                cmd.Parameters.AddWithValue("@contact_no", user.number);
                cmd.Parameters.AddWithValue("@email", user.Email);
                cmd.Parameters.AddWithValue("@full_address", user.full_address);
                cmd.Parameters.AddWithValue("@city", user.city);
                cmd.Parameters.AddWithValue("@pincode", user.pincode);
                cmd.Parameters.AddWithValue("@member_id", user.member_id);
                cmd.Parameters.AddWithValue("@password", user.password);
                cmd.Parameters.AddWithValue("@account_status", "pending");


                con.Open();
                int row = cmd.ExecuteNonQuery();
                con.Close();

                

                return row;

            }
            catch (Exception ex)
            {

                return 0;
            }
        }
    }
}
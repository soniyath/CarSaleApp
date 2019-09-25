using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Assign3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //global declarations 
      

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString;
            SqlConnection cnn;
            SqlCommand command;

            connectionString = "Data Source=YAS; Initial Catalog=CarSaleDB; Integrated Security=SSPI; Persist Security Info=false;";
            cnn = new SqlConnection(connectionString);
            cnn.Open();
            Response.Write("Connection Open");
            try
            {

                command = new SqlCommand("Insert into dbo.Customer values (@custName,@addr,@postC,@phoneNum,@mail,@pass)", cnn);
                 command.Parameters.AddWithValue("@custName", custName.Text);
                 command.Parameters.AddWithValue("@addr", addr.Text);
                 command.Parameters.AddWithValue("@postC", postC.Text);
                 command.Parameters.AddWithValue("@phoneNum", long.Parse(phoneNum.Text));
                 command.Parameters.AddWithValue("@mail", mail.Text);
                command.Parameters.AddWithValue("@pass", pass.Text);
          
                int r = command.ExecuteNonQuery();
                Response.Write("Rows affected are : " +r);


                Session["mail"] = mail.Text;
                Response.Write(Session["mail"].ToString());
                Response.Write("Session Created");
                Response.Redirect("/Profile.aspx");
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                if (cnn.State == ConnectionState.Open)
                {
                    cnn.Close();
                }
            }

        }
    }
}
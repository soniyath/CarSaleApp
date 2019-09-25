using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Assign3
{
    public partial class Default : System.Web.UI.Page
    {

        public Default()
        {

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //global declarations 
            string connetionString = null;
            SqlConnection cnn;
            //SqlCommand command;

            connetionString = "Data Source=YAS ; Initial Catalog=CarSaleDB;" +
           "Integrated Security=SSPI; Persist Security Info=false";
            cnn = new SqlConnection(connetionString);
            try
            {
                string mail = LoginMail.Text;
                string pass = Pass.Text;
                cnn.Open();
                string qry = "select * from Customer where mail='" + mail + "' and pass='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, cnn);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    Session["mail"] = mail;
                    Response.Redirect("/Profile.aspx");
                }
                else
                {
                    log.Text = "UserId & Password Is not correct Try again..!!";

                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
 
        }
    }
}
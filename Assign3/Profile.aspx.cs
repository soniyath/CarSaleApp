using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign3
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        //global declarations 
        string connetionString = null;
        SqlConnection cnn;
        SqlCommand command;


        protected void Page_Load(object sender, EventArgs e)
        {
            //global declarations 
            connetionString = null;
            SqlConnection cnn;
            //SqlCommand command;
            connetionString = "Data Source=YAS; Initial Catalog=CarSaleDB;" +
            "Integrated Security=SSPI;Persist Security Info=false";
            cnn = new SqlConnection(connetionString);

            if (Session["mail"] != null)
            {
                try {
                    cnn.Open();
                    string mail;
                    mail = Session["mail"].ToString();
                    Response.Write("The value stored in the session is: " + mail);
                    string custName = "select custName from Customer where mail= '" + mail + "';";
                    SqlCommand cmd = new SqlCommand(custName, cnn);
                    SqlDataReader reader = cmd.ExecuteReader();
                    wu.Text = "";
                    if (reader.Read())
                    {
                        wu.Text = "Welcome " + reader["custName"].ToString() + " Have a good day " + mail + ")!!";
                    }

                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                Response.Write("Session Does Not Exists");
                wu.Text = "User Not Loaded!";
            }
        
            model.Items.Add("Thunder");
            price.Text = "40000";       
}

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           

        }
        protected void brandList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedBrand = brandList.SelectedValue;
            if (selectedBrand == "Acura")
            {

                model.Items.Clear();
                model.Items.Add("TL");
                model.Items.Add("TSK");
                model.Items.Add("RSX");
            }
            else if (selectedBrand == "Mercedes")
            {
                model.Items.Clear();
                model.Items.Add("SLR");
                model.Items.Add("SPX");
                model.Items.Add("DSX");
            }
            else if(selectedBrand == "Land Rover")
            {
                model.Items.Clear();
                model.Items.Add("ASD");
                model.Items.Add("Evoque");
                model.Items.Add("Discover");
            }
            else
            {
                model.Items.Clear();
                model.Items.Add("Thunder");
                model.Items.Add("RMV");
                model.Items.Add("XK");
            }

        }

    

protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedModel = model.SelectedValue;
                if (model.Text == "RMV")
                {
                    price.Text = "30000";
                }
                else if (model.Text == "XK")
                {
                    price.Text = "125000";
                }
                else if (model.Text == "TL")
                {
                    price.Text = "124000";

                }
                else if (model.Text == "TSK")
                {
                    price.Text = "50000";

                }
                else if (model.Text == "RSK")
                {
                    price.Text = "55000";

                }
                else if (model.Text == "SLR")
                {
                    price.Text = "90000";
                }
                else if (model.Text == "SPX")
                {
                    price.Text = "125000";
                }
                else if (model.Text == "DSX")
                {
                    price.Text = "95000";
                }
                else if (model.Text == "ASD")
                {
                    price.Text = "50000";
                }
                else if (model.Text == "Evoque")
                {
                    price.Text = "90000";
                }
                else if (model.Text == "Discover")
                {
                    price.Text = "120600";
                }
                else
                {
                  price.Text = "40000";
                }
            }

        protected void Order_Click1(object sender, EventArgs e)
        {
            //Ordering Something...
            connetionString = "Data Source=YAS; Initial Catalog=CarSaleDB; Integrated Security=SSPI; Persist Security Info=false;";
            cnn = new SqlConnection(connetionString);
            cnn.Open();
            try
            {
                command = new SqlCommand("Insert into dbo.Orders values (@brandList,@model,@year,@colour,@price)", cnn);
                command.Parameters.AddWithValue("@brandList", brandList.Text);
                command.Parameters.AddWithValue("@model", model.Text);
                command.Parameters.AddWithValue("@year", int.Parse(year.Text));
                command.Parameters.AddWithValue("@colour", colour.Text);
                command.Parameters.AddWithValue("@price", int.Parse(price.Text));

                int r = command.ExecuteNonQuery();
                Response.Write("Order Successfully Placed!!");
            }
            catch (SqlException ex)
            {
                Response.Write(ex.Message);
            }

        }

        protected void previousOrders_Click(object sender, EventArgs e)
        {
            string orderHistory = "select * from  dbo.Orders";
            try
            {
                connetionString = "Data Source=YAS; Initial Catalog=CarSaleDB;" +
             "Integrated Security=SSPI;Persist Security Info=false";
                cnn = new SqlConnection(connetionString);
                cnn.Open();
                command = new SqlCommand(orderHistory, cnn);
                SqlDataReader reader = command.ExecuteReader();

                hist.Text = "";

                while (reader.Read())
                {
                    hist.Text = reader["brandList"].ToString() + " - " + reader["model"].ToString() + " - " + reader["year"].ToString() + " - " + reader["price"].ToString();
                }
            }

            catch (SqlException ex)
            {
                Response.Write("Error in SQL! " + ex.Message);
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

using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADD_DATA : System.Web.UI.Page
{
    //Sql Connection
    SqlConnection con = new SqlConnection(@"Data Source=KETHIKA-PC\SQLEXPRESS;Initial Catalog=Customer_Orders;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        // Retrive date from three dropdown lists
        if (!this.IsPostBack)
        {
            for (int y = 2018; y <= 2025; y++)
            {
                drpYear.Items.Add(y.ToString());
                drpYear.Items.Remove("");
            }
            for (int m = 1; m <= 12; m++)
            {
                drpMonth.Items.Add(m.ToString());
                drpMonth.Items.Remove("");
            }
            for (int d = 1; d <= 31; d++)
            {
                drpDay.Items.Add(d.ToString());
                drpDay.Items.Remove("");
            }
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        Response.Redirect("ORDER_SUMMARY.aspx");
    }
    protected void cmdSubmit_Click(object sender, EventArgs e)
    {
        //To get full Date
        string str = drpMonth.SelectedValue + "/" + drpDay.SelectedValue + "/" + drpYear.SelectedValue;
        DateTime dt = DateTime.Parse(str);

        //Must fill all the fields
        if (txtOrderNo.Text == "" || txtRecipient.Text == "" || txtAddress.Text == "" || txtItemNo.Text == "" || txtPrice.Text == "")
        {
            lblMsg.Text = "Please fill all the details for Ordering";
            return;
        }

        //When Custome fill ONLY Recipient Table Details
        if (txtCustomer.Text == "" || txtEmail.Text == "")
        {
            //Save details to Recipient-Order Table without Customer Table
            string saveSQL0;
            saveSQL0 = "INSERT INTO Recipient_Order (OrderNo, NIC_No, RecipientName, Address, DeliveryDate, ItemNo,Price)";
            saveSQL0 += "VALUES (@new_OrderNo, @new1_NIC_No, @new_RecipientName, @new_Address, @new_DeliveryDate, @new_ItemNo, @new_Price)";
            //Get data to Recipient Table 
            SqlCommand cmd0 = new SqlCommand(saveSQL0, con);
            cmd0.Parameters.Add(new SqlParameter("@new_OrderNo", txtOrderNo.Text));
            cmd0.Parameters.AddWithValue("@new1_NIC_No", txtNIC.Text);
            cmd0.Parameters.AddWithValue("@new_RecipientName", txtRecipient.Text);
            cmd0.Parameters.AddWithValue("@new_Address", txtAddress.Text);
            cmd0.Parameters.AddWithValue("@new_DeliveryDate", dt.Date);
            cmd0.Parameters.AddWithValue("@new_ItemNo", txtItemNo.Text);
            cmd0.Parameters.AddWithValue("@new_Price", txtPrice.Text);
            int saveDetail0 = 0;
            //Execute query to add details ONLY in recipient Table
            try
            {
                //Open the Connection
                con.Open();
                saveDetail0 = cmd0.ExecuteNonQuery();
                lblMsg.Text = saveDetail0.ToString() + "  ADDITION is Success";

                //Message and direct next page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Customer details saved sucessfully');window.location ='ORDER_SUMMARY.aspx';", true);
            }
            // Any errors When Execute query
            catch (Exception err)
            {
                lblMsg.Text = " ADDITION is NOT Success </br>";
                lblMsg.Text += err.Message;
            }
            // Close the Connection
            finally
            {
                con.Close();
            }

            Session["test"] = txtNIC.Text;
        }


        else
        {

            //Save details to Customer Table
            string saveSQL;
            saveSQL = "INSERT INTO Customer (NIC_No, CustomerName, Email)";
            saveSQL += "VALUES (@new_NIC_No, @new_CustomerName ,@new_Email)";
            //Get data to Customer Table
            SqlCommand cmd = new SqlCommand(saveSQL, con);
            cmd.Parameters.AddWithValue("@new_NIC_No", txtNIC.Text);
            cmd.Parameters.AddWithValue("@new_CustomerName", txtCustomer.Text);
            cmd.Parameters.AddWithValue("@new_Email", txtEmail.Text);

            //Save details to Recipient-Order Table
            string saveSQL1;
            saveSQL1 = "INSERT INTO Recipient_Order (OrderNo, NIC_No, RecipientName, Address, DeliveryDate, ItemNo,Price)";
            saveSQL1 += "VALUES (@new_OrderNo, @new1_NIC_No, @new_RecipientName, @new_Address, @new_DeliveryDate, @new_ItemNo, @new_Price)";
            //Get data to Recipient Table 
            SqlCommand cmd1 = new SqlCommand(saveSQL1, con);
            cmd1.Parameters.Add(new SqlParameter("@new_OrderNo", txtOrderNo.Text));
            cmd1.Parameters.AddWithValue("@new1_NIC_No", txtNIC.Text);
            cmd1.Parameters.AddWithValue("@new_RecipientName", txtRecipient.Text);
            cmd1.Parameters.AddWithValue("@new_Address", txtAddress.Text);
            cmd1.Parameters.AddWithValue("@new_DeliveryDate", dt.Date);
            cmd1.Parameters.AddWithValue("@new_ItemNo", txtItemNo.Text);
            cmd1.Parameters.AddWithValue("@new_Price", txtPrice.Text);


            // Number of attempt to Save
            int saveDetail = 0;
            //Execute query to add details
            try
            {
                //Open the Connection
                con.Open();
                saveDetail = cmd.ExecuteNonQuery();
                saveDetail = cmd1.ExecuteNonQuery();
                lblMsg.Text = saveDetail.ToString() + "  ADDITION is Success";

                //Message and direct next page
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Customer details saved sucessfully');window.location ='ORDER_SUMMARY.aspx';", true);
            }
            // Any errors When Execute query
            catch (Exception err)
            {
                lblMsg.Text = " ADDITION is NOT Success </br>";
                lblMsg.Text += err.Message;
            }
            // Close the Connection
            finally
            {
                con.Close();
            }

            Session["test"] = txtNIC.Text;

        }
    }
    public void txtNIC_TextChanged(object sender, EventArgs e)
    {

    }
}

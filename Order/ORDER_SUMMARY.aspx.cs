using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ORDER_SUMMARY : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pass = Convert.ToString(Session["test"]);
        lblNIC.Text = pass;

       if (!Page.IsPostBack)
         {
            getData(this.User.Identity.Name);
         }
       lblNIC.Text = "";
    }

    private void getData(string user)
    {
        DataTable dt = new DataTable();
        SqlConnection connection = new SqlConnection(@"Data Source=KETHIKA-PC\SQLEXPRESS;Initial Catalog=Customer_Orders;Integrated Security=True");
        connection.Open();
        SqlCommand sqlCmd = new SqlCommand("SELECT * from Customer, Recipient_Order where Customer.NIC_No ='" + lblNIC.Text+ "'", connection);
        SqlDataAdapter sqlDa = new SqlDataAdapter(sqlCmd);

        sqlCmd.Parameters.AddWithValue("@NIC_No",lblNIC.Text);
        sqlDa.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lblRecipient.Text = dt.Rows[0]["RecipientName"].ToString();
            lblDelivery.Text = dt.Rows[0]["DeliveryDate"].ToString();
            lblSelItem.Text = dt.Rows[0]["ItemNo"].ToString();
            lblCutomer.Text = dt.Rows[0]["CustomerName"].ToString();
            lblprice.Text = dt.Rows[0]["Price"].ToString();
            lblAddress.Text = dt.Rows[0]["Address"].ToString();
            lblEmail.Text = dt.Rows[0]["Email"].ToString();
        }
        connection.Close();
    }
}
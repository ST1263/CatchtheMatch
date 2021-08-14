using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default5 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string del = "delete from [signup] where username='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(del, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Label1.ForeColor = System.Drawing.Color.DarkViolet;
        Label1.Text = "User Deleted";
    }
}
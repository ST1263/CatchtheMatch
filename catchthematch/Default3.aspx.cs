using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string de = "delete from [signup] where username='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(de, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        Response.Redirect("http://localhost:2162/homepage.aspx");
    }
}
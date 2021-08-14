using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class preset : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string un, pw, cpw;
        un = TextBox1.Text;
        pw = TextBox2.Text;
        cpw = TextBox3.Text;
        string q = "update [signup] set password='" + pw + "',confirmpassword='" + cpw + "' where username='" + un + "' ";
        cmd = new SqlCommand(q, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("http://localhost:2162/Login.aspx");
    }
}
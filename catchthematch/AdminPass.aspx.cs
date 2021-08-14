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
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        string un, pw, cpw;
        un = txtuname.Text;
        pw = txtpass.Text;
        cpw = txtcpass.Text;
        string q = "update [Admin] set Password='" + pw + "',ConfirmPassword='" + cpw + "' where AdminUserName='" + un + "' ";
        cmd = new SqlCommand(q, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.ForeColor = System.Drawing.Color.DarkViolet;
        Label1.Text = "Password Changed";
        
    }
}
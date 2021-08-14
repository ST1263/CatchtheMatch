using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string check = "select count(*) from [signup] where username='"+TextBox1.Text+"' and password='"+TextBox2.Text+"'";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("http://localhost:2162/Default2.aspx");

        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "invalid";
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
        
        
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length < 9)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
}
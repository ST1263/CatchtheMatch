using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string check = "select count(*) from [Admin] where AdminUserName='" + txtname.Text + "' and Password='" + txtpass.Text + "'";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        
        if (temp == 1)
        {
            Session["userid"] = txtname.Text;
            Response.Redirect("http://localhost:2162/Adminpage.aspx");

        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Invalid";
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
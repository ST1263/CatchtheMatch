using System;
using System.Data.SqlClient;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
 

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void fillgrid() {
        try
        {
            cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
            cmd = new SqlCommand("select * from [user] where gender=@f1 and religion=@f2 and caste=@f3 and age between @age1 and @age2" , cn);
            cmd.Parameters.AddWithValue("@f1", dd1.SelectedValue);
            cmd.Parameters.AddWithValue("@f2", dd3.SelectedValue);
            cmd.Parameters.AddWithValue("@f3", dd4.SelectedValue);
            cmd.Parameters.AddWithValue("@age1", age1.SelectedValue);
            cmd.Parameters.AddWithValue("@age2", age2.SelectedValue);
        
           
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
           
            DataTable dt = new DataTable();
            da.Fill(dt);
            gv1.DataSource = dt;
            gv1.DataBind();
            if (gv1.Rows.Count <= 0)
            {
                Label5.Text = "Select";
            }



        }
        catch (Exception ex) {
            Label5.Text = ex.Message;
        
        }
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        fillgrid();
    }
    protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
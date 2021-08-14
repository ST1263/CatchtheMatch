using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection cn; //= new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    SqlCommand cmd;
       protected void Page_Load(object sender, EventArgs e)
    {
        fillgrid();
    }
    public void fillgrid()
    {
        try
        {
            cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
            cmd = new SqlCommand("select Id,photo,Fullname from [user]", cn);
           

            SqlDataAdapter da = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            if (GridView1.Rows.Count <= 0)
            {
                Response.Write("Select");
            }



        }
        catch (Exception ex)
        {
            Response.Write( ex.Message);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //string id = e.CommandName.Select
        //    SelectedRow.Cells[0].Text;
        //Label2.Text = id;

        ////if (e.CommandName == "Select")
        //{
        //    int i = Convert.ToInt32(e.CommandArgument);
        //    Label2.Text = GridView1.Rows[i].Cells[0].Text;

        //}
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label2.Text = Convert.ToString((Label)GridView1.FindControl("Label1")); 
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
     
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
    }
}
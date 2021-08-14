using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:2162/Adminpage.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:2162/AdminPass.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:2162/DeleteUser.aspx");
    }

        protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("http://localhost:2162/feedbackreport.aspx");
    }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:2162/AdminPage.aspx");
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:2162/homepage.aspx");
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:2162/report.aspx");
        }
}

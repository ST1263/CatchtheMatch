using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default5 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        //string n = Session["username"].ToString();
        if(con.State== ConnectionState.Open)
        {
            con.Close();

        }
        con.Open();
        show();
    }
    public void show()
    {
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "select * from [user] where username='"+Session["username"]+"'";
        //GridView1.DataSource = cmd.ExecuteReader();
        //GridView1.DataBind();
        //cmd.Dispose();
        cmd.CommandText = "select Fullname,Mobileno,emailid,gender,age,dob,matrialstatus,address,state,district,city,pincode,country,caste,religion,Higherdegree,occupation,annualincome,height,smoke_drinks,FatherOccupation,MotherOccupation,noofbrother,noofsister,birthplace,birthtime,expressyourself,idproof,workingplaceproof,photo from [user] where username='" + Session["username"] + "'";
        SqlDataReader sdr=cmd.ExecuteReader();
        sdr.Read();
        Label1.Text=sdr[0].ToString();
        Label2.Text = sdr[1].ToString();
        Label3.Text = sdr[2].ToString();
        Label4.Text = sdr[3].ToString();
        Label5.Text = sdr[4].ToString();
        Label6.Text = sdr[5].ToString();
        Label7.Text = sdr[6].ToString();
        Label8.Text = sdr[7].ToString();
        Label9.Text = sdr[8].ToString();
        Label10.Text = sdr[9].ToString();
        Label11.Text = sdr[10].ToString();
        Label12.Text = sdr[11].ToString();
        Label13.Text = sdr[12].ToString();
        Label14.Text = sdr[13].ToString();
        Label15.Text = sdr[14].ToString();
        Label16.Text = sdr[15].ToString();
        Label17.Text = sdr[16].ToString();
        Label18.Text = sdr[17].ToString();
        Label19.Text = sdr[18].ToString();
        Label20.Text = sdr[19].ToString();
        Label21.Text = sdr[20].ToString();
        Label22.Text = sdr[21].ToString();
        Label23.Text = sdr[22].ToString();
        Label24.Text = sdr[23].ToString();
        Label25.Text = sdr[24].ToString();
        Label26.Text = sdr[25].ToString();
        Label27.Text = sdr[26].ToString();
        Label28.Text = sdr[27].ToString();
        Label29.Text = sdr[27].ToString();
        Label30.Text = sdr[28].ToString();
       //// Label31.Text = sdr[29].ToString();
       // Label32.Text = sdr[30].ToString();
        sdr.Dispose();

    }
}
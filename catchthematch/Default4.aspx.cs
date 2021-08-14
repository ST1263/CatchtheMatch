using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;


public partial class Default4 : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
  //  SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //string inst = "insert into [user] (Fullname,Mobileno,emailid,gender,age,dob,matrialstatus,address,state,district,city,pincode,country,caste,religion,Higherdegree,occupation,annualincome,height,smoke_drinks,FatherOccupation,MotherOccupation,noofbrother,noofsister,birthplace,birthtime,expressyourself,idproof,workingplaceproof,photo) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+DropDownList3.SelectedItem+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+DropDownList1.Text+"','"+TextBox8.Text+"','"+DropDownList2.SelectedItem+"','"+TextBox23.Text+"','"+TextBox24.Text+"','"+TextBox10.Text+"','"+TextBox13.Text+"','"+DropDownList5.SelectedItem+"','"+TextBox25.Text+"','"+TextBox15.Text+"','"+DropDownList7.SelectedItem+"','"+DropDownList8.SelectedItem+"','"+DropDownList9.SelectedItem+"','"+TextBox16.Text+"','"+TextBox17.Text+"','"+TextBox18.Text+"','"+TextBox19.Text+"','"+TextBox20.Text+"','"+TextBox21.Text+"','"+TextBox22.Text+"','"+Image1.ImageUrl+"','"+Image2.ImageUrl+"','"+Image3.ImageUrl+"')";
        //con.Open();
        //SqlCommand com = new SqlCommand ("insert into user (Fullname,Mobileno,emailid,gender,age,dob,matrialstatus,address,state,district,city,pincode,country,caste,religion,Higherdegree,occupation,annualincome,height,smoke_drinks,FatherOccupation,MotherOccupation,noofbrother,noofsister,birthplace,birthtime,expressyourself,idproof,workingplaceproof,photo) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList3.SelectedItem + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + TextBox8.Text + "','" + DropDownList2.SelectedItem + "','" + TextBox23.Text + "','" + TextBox24.Text + "','" + TextBox10.Text + "','" + TextBox13.Text + "','" + DropDownList5.SelectedItem + "','" + TextBox25.Text + "','" + TextBox15.Text + "','" + DropDownList7.SelectedItem + "','" + DropDownList8.SelectedItem + "','" + DropDownList9.SelectedItem + "','" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + TextBox22.Text + "','" + Image1.ImageUrl + "','" + Image2.ImageUrl + "','" + Image3.ImageUrl + "')", con);
          
        //  com.ExecuteNonQuery();
        //  con.Close();
        //  lblmsg.Text = "inserted";
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/photo/" + FileUpload1.FileName));
            Image1.ImageUrl = "~/photo/" + FileUpload1.FileName;
        }
        else
        {
            lblmsg.Text = "please select file";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(Server.MapPath("~/photo/" + FileUpload2.FileName));
            Image2.ImageUrl = "~/photo/" + FileUpload2.FileName;
        }
        else
        {
            lblmsg.Text = "please select file";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile)
        {
            FileUpload3.SaveAs(Server.MapPath("~/photo/" + FileUpload3.FileName));
            Image3.ImageUrl = "~/photo/" + FileUpload3.FileName;
        }
        else
        {
            lblmsg.Text = "please select file";
        }
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\SHREYAS TAMBOLI\Documents\Visual Studio 2013\WebSites\catchthematch\App_Data\jodi.mdf;Integrated Security=True");
            string inst = "insert into [user] (Fullname,Mobileno,emailid,gender,age,dob,matrialstatus,address,state,district,city,pincode,country,caste,religion,Higherdegree,occupation,annualincome,height,smoke_drinks,FatherOccupation,MotherOccupation,noofbrother,noofsister,birthplace,birthtime,expressyourself,idproof,workingplaceproof,photo,username) values(@f1,@f2,@f3,@f4,@f5,@f6,@f7,@f8,@f9,@f10,@f11,@f12,@f13,@f14,@f15,@f16,@f17,@f18,@f19,@f20,@f21,@f22,@f23,@f24,@f25,@f26,@f27,@f28,@f29,@f30,@f31)";
            cmd = new SqlCommand(inst, cn);
            cmd.Parameters.AddWithValue("@f1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@f2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@f3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@f4", DropDownList3.Text);
            cmd.Parameters.AddWithValue("@f5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@f6", TextBox6.Text);
            cmd.Parameters.AddWithValue("@f7", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@f8", TextBox8.Text);
            cmd.Parameters.AddWithValue("@f9", DropDownList2.Text);
            cmd.Parameters.AddWithValue("@f10", TextBox23.Text);
            cmd.Parameters.AddWithValue("@f11", TextBox24.Text);
            cmd.Parameters.AddWithValue("@f12", TextBox10.Text);
            cmd.Parameters.AddWithValue("@f13", TextBox13.Text);
            cmd.Parameters.AddWithValue("@f14", DropDownList5.Text);
            cmd.Parameters.AddWithValue("@f15", DropDownList6.Text);
            cmd.Parameters.AddWithValue("@f16", TextBox25.Text);
            cmd.Parameters.AddWithValue("@f17", TextBox15.Text);
            cmd.Parameters.AddWithValue("@f18", DropDownList7.Text);
            cmd.Parameters.AddWithValue("@f19", DropDownList8.Text);
            cmd.Parameters.AddWithValue("@f20", DropDownList9.Text);
            cmd.Parameters.AddWithValue("@f21", TextBox16.Text);
            cmd.Parameters.AddWithValue("@f22", TextBox17.Text);
            cmd.Parameters.AddWithValue("@f23", TextBox18.Text);
            cmd.Parameters.AddWithValue("@f24", TextBox19.Text);
            cmd.Parameters.AddWithValue("@f25", TextBox20.Text);
            cmd.Parameters.AddWithValue("@f26", TextBox21.Text);
            cmd.Parameters.AddWithValue("@f27", TextBox22.Text);
            cmd.Parameters.AddWithValue("@f28", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@f29", Image2.ImageUrl);
            cmd.Parameters.AddWithValue("@f30", Image3.ImageUrl);
            cmd.Parameters.AddWithValue("@f31", Session["username"]);
            //cmd.Parameters.AddWithValue("@f32", pass.Text);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
            lblmsg.Text = "sucessfully";
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message;
        }
    }
}
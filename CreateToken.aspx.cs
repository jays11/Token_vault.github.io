using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string str;
            str = "Not Yet Started";
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Token values('" + TextBox1.Text + "','" + DropDownList2.SelectedItem + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + Calendar1.SelectedDate + "','" + Calendar2.SelectedDate + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + DropDownList3.SelectedItem + "','" + DropDownList1.SelectedItem + "','" + TextBox8.Text + "','"+str+"')", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            Label1.Visible = true;
            cn.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
        catch
        {
            Label2.Visible = true;
        }
    }
}
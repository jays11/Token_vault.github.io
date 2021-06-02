using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Developer values('" + txtname.Text + "','" + txtusername.Text + "','" + txtaddress.Text + "','" + txtmobile.Text + "','" + txtemail.Text + "','" + txtstate.Text + "','" + txtcity.Text + "','" + txtpwd.Text + "','" + txtcpwd.Text + "','" + DropDownList1.SelectedItem + "','" + Calendar1.SelectedDate + "','" + DropDownList2.SelectedItem + "','" + TextBox1.Text + "')", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        txtname.Text = "";
        txtusername.Text = "";
        txtaddress.Text = "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtpwd.Text = "";
        txtstate.Text = "";
        txtcity.Text = "";
        txtcpwd.Text = "";
        TextBox1.Text = "";
        Label2.Visible = true;
    }
         catch
        {
            Label1.Visible = true;
        }
    
     }
}
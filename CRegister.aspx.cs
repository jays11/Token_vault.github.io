﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class regst : System.Web.UI.Page
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
            //string gn = "";
            //if (this.RadioButton1.Checked)
            //{
            //    gn = "male";
            //}
            //else
            //{
            //    gn = "female";
            //}
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into register values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.SelectedItem + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox11.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            cn.Close();
        }
        catch
        { 
            Label1.Visible = true; 
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}


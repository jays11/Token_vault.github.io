﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;


public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
            Label2.Visible=false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Query(TokenName,Email,Question) values('" + DropDownList1.SelectedItem + "','" + TextBox1.Text + "','" + TextBox2.Text + "')", cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            Label1.Visible = true;
            cn.Close();
        }
        catch
        {
            Label2.Visible = true;

        }
    }
}
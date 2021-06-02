using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        lblvalidation.Visible = false;
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        ValidateUser(txtusername.Text.Trim(), txtpassword.Text.Trim());

    }

    private void ValidateUser(string p, string p_2)
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("select * from logins_ad where email=@email and password=@password", cn);
        cmd.Parameters.AddWithValue("@email", p);
        cmd.Parameters.AddWithValue("@password", p_2);
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        cmd.ExecuteScalar();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["uname"] = txtusername.Text;
            Response.Redirect("ADashboard.aspx");
        }
        else
        {
            lblvalidation.Visible = true;
        }
        cn.Close();

    }
}
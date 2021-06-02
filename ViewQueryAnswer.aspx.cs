using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection cnn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
        SqlCommand cmdd = new SqlCommand("select * from Query where TokenName='"+DropDownList1.SelectedItem+"' AND Email='"+TextBox1.Text+"' ", cnn);
        SqlDataAdapter da = new SqlDataAdapter(cmdd);
        DataSet ds = new DataSet();
        cnn.Open();
        cmdd.ExecuteScalar();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

        cnn.Close();
    }
}
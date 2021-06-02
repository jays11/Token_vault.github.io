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
            SqlConnection cnn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\WebSite1\App_Data\TokenVault.mdf;Integrated Security=True");
            SqlCommand cmdd = new SqlCommand("update Token set DeveloperAssigned='"+DropDownList2.SelectedItem+"' where TokenName='"+DropDownList1.SelectedItem+"'",cnn);
            cnn.Open();
            cmdd.ExecuteNonQuery();
            Label2.Visible = true;
            Label1.Visible = false;
            cnn.Close();
        }
        catch
        {
            Label1.Visible = true;
        }
    }
}
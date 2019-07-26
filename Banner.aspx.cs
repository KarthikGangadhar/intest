using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class Banner : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
    }

    private void BindGrid()
    {
        string sqlConnectionString = ConfigurationManager.AppSettings["ConnectionString"].ToString();
        SqlConnection conn = new SqlConnection(sqlConnectionString);
        try
        {
            lblException.Text = string.Empty;

            //Query to get the Data
            string sqlQuery = "SELECT B.Name, B.Link, SUM(BT.ImpressionCount) TotalImpressions, SUM(BT.ClickCount) TotalClickCount FROM Banner B"
                               + " Inner Join BannerTracking BT on BT.BannerId = B.BannerId"
                               + " WHERE BT.CreateDate >= '11/21/2006' GROUP BY B.Name, B.Link ORDER BY B.Name";

            conn.Open();

            SqlCommand sqlCmd = new SqlCommand(sqlQuery, conn);

            //Bind data into Sql Reader
            SqlDataReader sqlRdr = sqlCmd.ExecuteReader();

            if (sqlRdr != null)
            {
                //If data present, then bind it to the grid
                grdBannerData.DataSource = sqlRdr;
                grdBannerData.DataBind();
            }
            else
            {
                lblException.Text = "No Data Found!";
            }
        }
        catch (Exception)
        {
            lblException.Text = "An Exception has occurred while binding data to the grid!";
        }
        finally
        {
            conn.Close();
        }
    }

}

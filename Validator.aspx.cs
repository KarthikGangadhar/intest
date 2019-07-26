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

public partial class Validator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //Server side validation to check for empty values
    protected void cstvAtleastOne_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (string.IsNullOrEmpty(drpState.SelectedValue) && string.IsNullOrEmpty(txtRegion.Text.ToString()))
        {
            args.IsValid = false;
        }
    }
}

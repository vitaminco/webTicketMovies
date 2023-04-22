using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanTriPhim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["USER"] == null && Session["USER"] == "")
            {
                Response.Redirect("TrangChu.aspx");
            }
        }
        catch(Exception ex)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
}
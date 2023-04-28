using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlGioiThieu : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<GIOITHIEU> listGioiThieu = new List<GIOITHIEU>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LoadGioiThieu();
        }
        catch (Exception ex)
        {
            Response.Redirect("./Error.aspx");
        }
    }
    void LoadGioiThieu()
    {
        var data = from a in db.GIOITHIEUs
                   select a;
        if (data != null && data.Count() > 0)
        {
            listGioiThieu = data.ToList();
        }
    }
}
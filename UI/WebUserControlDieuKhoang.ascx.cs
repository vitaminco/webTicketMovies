using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlDieuKhoang : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<DIEUKHOANG> listDieuKhoang = new List<DIEUKHOANG>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LoadDieuKhoang();
        }
        catch (Exception ex)
        {
            Response.Redirect("./Error.aspx");
        }
    }
    void LoadDieuKhoang()
    {
        var data = from a in db.DIEUKHOANGs
                   select a;
        if (data != null && data.Count() > 0)
        {
            listDieuKhoang = data.ToList();
        }
    }
}
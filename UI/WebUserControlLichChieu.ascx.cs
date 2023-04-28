using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlLichChieu : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<PHIM> listLichChieu = new List<PHIM>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LoadLichChieu();
        }
        catch (Exception ex)
        {
            Response.Redirect("./Error.aspx");
        }
    }
    void LoadLichChieu()
    {
        var data = from q in db.PHIMs
                   select q;
        if (data != null && data.Count() > 0)
        {
            listLichChieu = data.ToList();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlGiaVe : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<GIAVE> listGiaVe = new List<GIAVE>();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadGiaVe();
    }
    void LoadGiaVe()
    {
        var data = from q in db.GIAVEs
                   select q;
        if (data != null && data.Count() > 0)
        {
            listGiaVe = data.ToList();
        }
    }
}
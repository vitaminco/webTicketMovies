using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlDanhSachKhuyenMai : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<KHUYENMAI> listKhuyenMai = new List<KHUYENMAI>();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadKhuyenMai();
    }
    void LoadKhuyenMai()
    {
        var data = from p in db.KHUYENMAIs
                   select p;
        if (data != null && data.Count() > 0)
        {
            listKhuyenMai = data.ToList();
        }
    }
}
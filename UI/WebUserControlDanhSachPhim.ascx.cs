using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlDanhSachPhim : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<HINHANH> listHinhAnh = new List<HINHANH>();
    public static List<PHIM> listPhim = new List<PHIM>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LoadPhim();
            LoadHinhAnh();
        }
        catch (Exception ex)
        {
            Response.Redirect("./Error.aspx");
        }
    }
    void LoadPhim()
    {
        var data = from p in db.PHIMs
                   select p;
        if (data != null && data.Count() > 0)
        {
            listPhim = data.ToList();
        }
    }
    void LoadHinhAnh()
    {
        var data = from e in db.HINHANHs
                   select e;
        if (data != null && data.Count() > 0)
        {
            listHinhAnh = data.ToList();
        }
    }
}
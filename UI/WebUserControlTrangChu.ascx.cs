using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlTrangChu : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static List<HINHANH> listHinh = new List<HINHANH>();
    public static List<PHIM> listPhim = new List<PHIM>();
    public static List<KHUYENMAI> listKhuyenMai = new List<KHUYENMAI>();
    public static List<TINTUC> listTin = new List<TINTUC>();
    public static List<PHIMANDTHEOAIResult> listPhimAndLoai = new List<PHIMANDTHEOAIResult>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            LoadHinh();
            LoadPhim();
            LoadKhuyenMai();
            LoadTin();
            LoadPhimAndLoai();
        }
        catch (Exception ex)
        {
            Response.Redirect("./Error.aspx");
        }
    }
    void LoadHinh()
    {
        var data = from q in db.HINHANHs
                   select q;
        if (data != null && data.Count() > 0)
        {
            listHinh = data.ToList();
        }
    }
    void LoadPhim()
    {
        var data = from q in db.PHIMs
                   select q;
        if (data != null && data.Count() > 0)
        {
            listPhim = data.ToList();
        }
    }
    void LoadKhuyenMai()
    {
        var data = from q in db.KHUYENMAIs
                   select q;
        if (data != null && data.Count() > 0)
        {
            listKhuyenMai = data.ToList();
        }
    }
    void LoadTin()
    {
        var data = from q in db.TINTUCs
                   select q;
        if (data != null && data.Count() > 0)
        {
            listTin = data.ToList();
        }
    }

   void LoadPhimAndLoai()
    {
        var data = db.PHIMANDTHEOAI().ToList();

        if (data != null && data.Count() > 0)
        {
            listPhimAndLoai = data.ToList();
        }
    }
   
}
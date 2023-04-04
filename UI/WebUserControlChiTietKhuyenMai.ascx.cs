using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlChiTietKhuyenMai : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static KHUYENMAI inforKhuyenMai = new KHUYENMAI();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["IdNews"] != null && Request.QueryString["IdNews"].ToString() != "")
        {
            long IDKHKUYENMAI = Int32.Parse(Request.QueryString["IdNews"]);
            LoadChiTietKhuyenMai(IDKHKUYENMAI);
        }
    }
    void LoadChiTietKhuyenMai(long idInput)
    {
        var data = from a in db.KHUYENMAIs
                   where a.IDKHUYENMAI == idInput
                   select a;
        if (data != null && data.Count() > 0)
        {
            inforKhuyenMai = data.First();
        }
    }
}
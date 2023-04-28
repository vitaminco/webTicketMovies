using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlChiTietPhim : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    
    public static PHIM inforPhim = new PHIM();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["IdNews"] != null && Request.QueryString["IdNews"].ToString() != "")
        {
            long IDPHIM = Int32.Parse(Request.QueryString["IdNews"]);
            LoadChiTietPhimm(IDPHIM);
        }
    }
    void LoadChiTietPhimm(long idInput)
    {
        var data = from a in db.PHIMs
                   where a.IDCACBOPHIM == idInput
                   select a;
        if (data != null && data.Count() > 0)
        {
            inforPhim = data.First();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_WebUserControlTinTuc : System.Web.UI.UserControl
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static TINTUC inforTin = new TINTUC();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["IDTINTUC"] != null && Request.QueryString["IDTINTUC"].ToString() != "")
        {
            long TINTUC = Int32.Parse(Request.QueryString["IDTINTUC"]);
            LoadChiTietTin(TINTUC);
        } 
    }
    void LoadChiTietTin(long idInput)
    {
        var data = from a in db.TINTUCs
                   where a.IDTIN == idInput
                   select a;
        if (data != null && data.Count() > 0)
        {
            inforTin = data.First();
        }
    }
}
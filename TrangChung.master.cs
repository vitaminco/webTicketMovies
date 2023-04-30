using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChung : System.Web.UI.MasterPage
{
    public static DataWebDataContext db = new DataWebDataContext();
   //phần master đổi logo, ten diachi, sdt, ...
    public static string strCopyLoGo = "";
    public static string strCopyTenRap = "";
    public static string strCopySDT = "";
    public static string strCopyTenCT = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadLoGo();
        LoadTenRap();
        LoadSDT();
        LoadTenCongTy();
    }
    void LoadLoGo()
    {
        var data = from q in db.CAUHINHs
                   where q.TEN == "LOGO"
                   select q;
        if(data != null & data.Count()>0){
            strCopyLoGo = data.First().GIATRI;
        }
    }

    void LoadTenRap()
    {
        var data = from q in db.CAUHINHs
                   where q.TEN == "TENRAP"
                   select q;
        if (data != null & data.Count() > 0)
        {
            strCopyTenRap = data.First().GIATRI;
        }
    }

    void LoadSDT()
    {
        var data = from q in db.CAUHINHs
                   where q.TEN == "SODT"
                   select q;
        if (data != null & data.Count() > 0)
        {
            strCopySDT = data.First().GIATRI;
        }
    }

    void LoadTenCongTy()
    {
        var data = from q in db.CAUHINHs
                   where q.TEN == "TENCONGTY"
                   select q;
        if (data != null & data.Count() > 0)
        {
            strCopyTenCT = data.First().GIATRI;
        }
    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        DataWebDataContext db = new DataWebDataContext();
        var data = from q in db.USERs
                   where q.USERNAMES == txtUSER.Text
                   select q;
        if (data != null && data.Count() > 0)
        {
            var dat = from t in db.USERs
                      where t.PASSWORDS == txtPASS.Text
                      select t;
            if (dat != null && dat.Count() > 0)
            {
                Session["USERNAMES"] = txtUSER.Text;
                Session["PASSWORDS"] = txtPASS.Text;
                Response.Redirect("Admin/QuanTriPhim.aspx");
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Đăng nhập thành công!!')", true);
            }
            else
            {
                lblError.Text = "Đăng nhập không thành công, thông tin không chính xác";
            }
        }
        else
        {
            lblError.Text = "Đăng nhập không thành công";
        }
    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {

    }
}

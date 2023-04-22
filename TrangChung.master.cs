using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TrangChung : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        DataWebDataContext db = new DataWebDataContext();
        var data = from q in db.CAUHINHs
                   where q.TEN == "USER" && q.GIATRI == txtUSER.Text
                   select q;
        if (data != null && data.Count() > 0)
        {
            var dat = from t in db.CAUHINHs
                      where t.TEN == "PASS" && t.GIATRI == txtPASS.Text
                      select t;
            if (dat != null && dat.Count() > 0)
            {
                Session["USER"] = txtUSER.Text;
                Session["PASS"] = txtPASS.Text;
                lblError.Text = "OK VERRY GOOD!!!";
                Response.Redirect("QuanTriPhim.aspx");
            }
            else
            {
                lblError.Text = "Đăng nhập không thành công, thông tin không chính xác";
            }
        }
        else
        {
            lblError.Text = "Đăng nhập không thành công, thông tin không chính xác";
        }
    }
}

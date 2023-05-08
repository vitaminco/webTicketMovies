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
    //dăng nhập
    protected void btnDangNhap_Click(object sender, EventArgs e)
    {
        DataWebDataContext db = new DataWebDataContext();
        var data = from q in db.TAIKHOANGs
                   where q.USERNAMES == txtUSER.Text
                   select q;
        if (data != null && data.Count() > 0)
        {
            var dat = from t in db.TAIKHOANGs
                      where t.PASSWORDS == txtPASS.Text
                      select t;
            if (dat != null && dat.Count() > 0 && txtPASS.Text == txtCF_PASS.Text)
            {
               
                Session["USERNAMES"] = txtUSER.Text;
                Session["PASSWORDS"] = txtPASS.Text;
                if (txtUSER.Text == "Admin" && txtPASS.Text == "123456")
                {
                    Response.Redirect("Admin/QuanTriPhim.aspx");
                }
                else {
                    Response.Redirect("TrangChu.aspx");
                }
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Đăng nhập thành công!!')", true);
            }
            else
            {
                lblError.Text = "Đăng nhập không thành công, thông tin không chính xác";
                ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Đăng nhập không thành công, thông tin không chính xác!!')", true);
            }
        }
        else
        {
            lblError.Text = "Đăng nhập không thành công";
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Đăng nhập không thành công, thông tin không chính xác!!')", true);
        }
    }
    //dăng kí
    void LoadUsers(long idInput)
    {
        var data = from q in db.TAIKHOANGs
                   where q.ID == idInput
                   select q;
        if (data != null && data.Count() > 0)
        {
            TAIKHOANG inforUsers = data.First();
            txtUSERNAMES.Text = inforUsers.USERNAMES;
            txtPASSWORDS.Text = inforUsers.PASSWORDS;
            
        }
    }
    protected void btnDangKy_Click(object sender, EventArgs e)
    {
        if (txtPASSWORDS.Text == txtKT_PASSWORDS.Text)
        {
            TAIKHOANG inforUsers = new TAIKHOANG();
            inforUsers.USERNAMES = txtUSERNAMES.Text;
            inforUsers.PASSWORDS = txtPASSWORDS.Text;

            db.TAIKHOANGs.InsertOnSubmit(inforUsers);
            db.SubmitChanges();
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công')", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('VUI LÒNG NHẬP LẠI')", true);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Phim_AddPhim : System.Web.UI.Page
{
    public static DataWebDataContext db = new DataWebDataContext();
    public static long idPhim = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["IdPhim"] != null && Request.QueryString["IdPhim"].ToString() != "")
            {
                long idPhim = Int32.Parse(Request.QueryString["IdPhim"]);
                LoadPhim(idPhim);
            }
        }
    }
    void LoadPhim(long idInput)
    {
        var data = from q in db.PHIMs
                   where q.IDCACBOPHIM == idInput
                   select q;
        if (data != null && data.Count() > 0)
        {
            PHIM inforPhim = data.First();
            txtTENPHIM.Text = inforPhim.TENPHIM;
            lnbNgay.Text = txtNGAYDANG.SelectedDate.ToShortDateString();
            txtXUATCHIEU.Text = inforPhim.XUATCHIEU;
            txtTHOILUONG.Text = inforPhim.THOILUONG;
            txtGIABAN.Text = inforPhim.GIABAN;
            txtGIAGIAM.Text = inforPhim.GIAGIAM;
            txtMAPHONG.Text = inforPhim.MAPHONG;
            FCKNOIDUNGPHIM.Value = HttpUtility.HtmlDecode(inforPhim.NOIDUNGPHIM);
        }
    }
    protected void btnCapNhat_Click1(object sender, EventArgs e)
    {
       
                PHIM inforPhim = new PHIM();
                inforPhim.TENPHIM = txtTENPHIM.Text;
                inforPhim.XUATCHIEU = txtXUATCHIEU.Text;
                inforPhim.THOILUONG = txtTHOILUONG.Text;
                inforPhim.GIABAN = txtGIABAN.Text;
                inforPhim.GIAGIAM = txtGIAGIAM.Text;
                inforPhim.MAPHONG = txtMAPHONG.Text;
                inforPhim.NOIDUNGPHIM = HttpUtility.HtmlEncode(FCKNOIDUNGPHIM.Value);
                if (fileHINHANHPHIM.HasFile)
                {
                    inforPhim.HINHANHPHIM = fileHINHANHPHIM.FileName;
                    fileHINHANHPHIM.SaveAs(Server.MapPath("\\Asset\\images\\") + fileHINHANHPHIM.FileName);
                }
                db.PHIMs.InsertOnSubmit(inforPhim);
                db.SubmitChanges();
        ScriptManager.RegisterStartupScript(this, typeof(string), "Message", "alert('Thêm mới thành công')", true);
        Response.Redirect("../QuanTriPhim.aspx");
     }
        
    
}
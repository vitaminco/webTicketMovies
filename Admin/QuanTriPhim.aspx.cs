using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanTriPhim : System.Web.UI.Page
{
    public static DataWebDataContext db = new DataWebDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["USER"] == null && Session["USER"] == "")
            {
                Response.Redirect("Admin/QuanTriPhim.aspx");
            }
            else {
                LoadPhim();
            }
        }
        catch(Exception ex)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
    void LoadPhim()
    {
        var data = from q in db.PHIMs
                   select q;
        if (data != null && data.Count() > 0)
        {
            gridPhim.DataSource = data.ToList();
            gridPhim.DataBind();
        }
    }
    protected void gridPhim_ItemCommand(object source, DataGridCommandEventArgs e)
    {

    }
    protected void gridPhim_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        gridPhim.CurrentPageIndex = e.NewPageIndex;
        LoadPhim();
    }
}
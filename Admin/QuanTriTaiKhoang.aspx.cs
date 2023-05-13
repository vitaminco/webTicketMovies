using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Users : System.Web.UI.Page
{
    public static DataWebDataContext db = new DataWebDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadTaiKhoang();
    }

    void LoadTaiKhoang()
    {
        var data = from q in db.TAIKHOANGs
                   select q;
        if (data != null && data.Count() > 0)
        {
            gridTaiKhoang.DataSource = data.ToList();
            gridTaiKhoang.DataBind();
        }
    }
    protected void gridTaiKhoang_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        /* CẬP NHẬT
        if (((LinkButton)e.CommandSource).CommandName == "UpdateTaiKhoang")
        {
            long idP = Convert.ToInt32(gridTaiKhoang.DataKeys[e.Item.ItemIndex].ToString());
            Response.Redirect("./Phim/UpdateTaiKhoang.aspx?IdTaiKhoang=" + idP.ToString());
        }
        */
        /*XÓA*/
        if (((LinkButton)e.CommandSource).CommandName == "DeleteTaiKhoang")
        {
            long idP = Convert.ToInt32(gridTaiKhoang.DataKeys[e.Item.ItemIndex].ToString());
            var data = from q in db.TAIKHOANGs
                       where q.ID == idP
                       select q;
            if (data != null && data.Count() > 0)
            {
                TAIKHOANG infoTaiKhoang = data.First();
                db.TAIKHOANGs.DeleteOnSubmit(infoTaiKhoang);
                db.SubmitChanges();
                LoadTaiKhoang();
            }
        }
    }
    protected void gridTaiKhoang_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        gridTaiKhoang.CurrentPageIndex = e.NewPageIndex;
        LoadTaiKhoang();
    }
    
}
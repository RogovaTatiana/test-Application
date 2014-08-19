using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testApplic.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        DataView dv;
        DataTable dt;

        public void Page_Load()
        {
            if ((HttpContext.Current.Request.QueryString.Count>0)&&(HttpContext.Current.Request.QueryString[0] == "not_enough"))
                MessageLabel.Visible = true;
            if (!IsPostBack)
            {
                GetUsers();
            }
        }

        private void GetUsers()
        {
            dt = new DataTable();
            DataRow dr;

            dt.Columns.Add(new DataColumn("IdValue", typeof(Int32)));
            dt.Columns.Add(new DataColumn("UserNameValue", typeof(string)));
            dt.Columns.Add(new DataColumn("LoginValue", typeof(string)));
            dt.Columns.Add(new DataColumn("EmailValue", typeof(string)));
            dt.Columns.Add(new DataColumn("RoleValue", typeof(string)));
            dt.Columns.Add(new DataColumn("UrlValue", typeof(string)));
            
            MembershipUserCollection allUsers = Membership.GetAllUsers();
            MembershipUser[] arr = new MembershipUser[allUsers.Count];
            allUsers.CopyTo(arr, 0);

            for (int i = 0; i < arr.Length;i++ )
            {
                dr = dt.NewRow();
                dr[0] = i+1;
                dr[1] = arr[i].UserName;
                dr[2] = arr[i].UserName;
                dr[3] = arr[i].Email;
                dr[4] = Roles.GetRolesForUser(arr[i].UserName).FirstOrDefault();
                //foreach (var rl in Roles.GetRolesForUser(arr[i].UserName))
                //    dr[4] = rl + " ";
                dr[5] = "~/Admin/EditUser?Id=" + arr[i].UserName;
                dt.Rows.Add(dr);
            }
            dv = new DataView(dt);
            UserGrid.DataSource = dv;
            UserGrid.DataBind();
        }

    }
}
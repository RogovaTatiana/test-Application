using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace testApplic.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        
        MembershipUser us;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.IsInRole("администратор"))
                Response.Redirect("~/Admin/Users?Rights=not_enough");
            string userName = "";
            userName = HttpContext.Current.Request.QueryString[0];
            string[] rls = Roles.GetAllRoles();
            ListItem li = new ListItem("роль не установлена");
            Role.Items.Add(li);
            foreach (var rl in rls)
            {
                li = new ListItem(rl);
                Role.Items.Add(li);
            }
            if (!IsPostBack)
            {
                GetUser(userName);
            }
        }

        private void GetUser(string userName)
        {
            us = Membership.GetUser(userName);
            UserName.Text = us.UserName;
            Login.Text = us.UserName;
            Email.Text = us.Email;
            Role.SelectedValue = Roles.GetRolesForUser(us.UserName).FirstOrDefault();
        }

        protected void saveChanges_Click(object sender, EventArgs e)
        {
            string userName = "";
            userName = HttpContext.Current.Request.QueryString[0];
            us = Membership.GetUser(userName);
            us.Email = Email.Text;
            Membership.UpdateUser(us);
            if (Roles.GetRolesForUser(us.UserName).Count()!=0)
                Roles.RemoveUserFromRoles(us.UserName, Roles.GetRolesForUser(us.UserName));
            if (!Role.SelectedValue.Equals("роль не установлена"))
                Roles.AddUserToRole(us.UserName, Role.SelectedValue);
            Response.Redirect("~/Admin/Users");
        }

        protected void cancelChanges_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Users");
        }
    }
}
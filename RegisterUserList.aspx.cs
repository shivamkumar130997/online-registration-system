using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace app1
{
    public partial class RegisterUserList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                BindRegisterUser();
            }
        }
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                {
                    return Convert.ToInt32(ViewState["PageNumber"]);
                }
                else
                {
                    return 0;
                }
            }
            set { ViewState["PageNumber"] = value; }
        }

        private void BindRegisterUser()
        {
            string connstring = ConfigurationManager.ConnectionStrings["shivam"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connstring))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from [login]", connstring);

                //save the result in data table
                DataTable dt = new DataTable();
                da.Fill(dt);

           
                //Create the PagedDataSource that will be used in paging
                PagedDataSource pgitems = new PagedDataSource();
                pgitems.DataSource = dt.DefaultView;
                pgitems.AllowPaging = true;

                //Control page size from here 
                pgitems.PageSize = 10;
                pgitems.CurrentPageIndex = PageNumber;
                if (pgitems.PageCount > 1)
                {
                    rptPaging.Visible = true;
                    ArrayList pages = new ArrayList();
                    for (int i = 0; i <= pgitems.PageCount - 1; i++)
                    {
                        pages.Add((i + 1).ToString());
                    }
                    rptPaging.DataSource = pages;
                    rptPaging.DataBind();
                }
                else
                {
                    rptPaging.Visible = false;
                }

                //Finally, set the datasource of the repe
                grdUser.DataSource = pgitems;
                grdUser.DataBind();
            }


        }
        //This method will fire when clicking on the page no link from the pager repeater
        protected void rptPaging_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            BindRegisterUser();
        }

        protected void Edit_Click(object sender, ImageClickEventArgs e)
        {

        }

        //protected void Delete_Click(object sender, ImageClickEventArgs e)
        //{

        //    string connstring = ConfigurationManager.ConnectionStrings["shivam"].ConnectionString;

        //    using (SqlConnection connection = new SqlConnection(connstring))
        //    {
        //        LinkButton bk = sender as LinkButton;
        //        int userid   = 0;

        //        int.TryParse(bk.CommandArgument.ToString(), out userid);

        //        string sql = "Delete From [Login] Where Id=" + userid;
        //        SqlCommand cmd = new SqlCommand(sql, connection);
        //        connection.Open();

        //        cmd.ExecuteNonQuery();
        //        cmd.Dispose();
        //        BindRegisterUser();

        //    }

        //}

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
                string connstring = ConfigurationManager.ConnectionStrings["shivam"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connstring))
                {
                    LinkButton bk = sender as LinkButton;
                    int userid = 0;

                    int.TryParse(bk.CommandArgument.ToString(), out userid);

                    string sql = "Delete From [Login] Where Id=" + userid;
                    SqlCommand cmd = new SqlCommand(sql, connection);
                    connection.Open();

                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    BindRegisterUser();

                }
           

        }

        protected void btnRegisterUse_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}




using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AKSS_Management.AKodam_Management
{
    public partial class AKSS_Code : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindOnFirstPageLoad();               
            }
        }

        public void BindOnFirstPageLoad()
        {
            BtnSave.Text = "Submit";
            
        }

        protected async void BtnSave_Click(object sender, EventArgs e)
        {

            try
            {
                string spname = "AKSS_CODE";
                
                SqlParameter[] parameters = {                    
                    //new SqlParameter("@CRUD_Action", "SP"),
                    new SqlParameter("@TableName", TxtTableName.Text.Trim()),
                    //new SqlParameter("@SQL_Flag", Convert.ToInt32( txtUserId.Text.Trim())),
                    //new SqlParameter("@SQL_SubFlag", Convert.ToInt32( txtUserId.Text.Trim())),
                    //new SqlParameter("@SQL_Developer", Convert.ToInt32( txtUserId.Text.Trim())),
                    //new SqlParameter("@SQL_DBA", Convert.ToInt32( txtUserId.Text.Trim())),
                    //new SqlParameter("@SQL_Designer", Convert.ToInt32( txtUserId.Text.Trim())),
                };
                DataTable dt = await CommonUtility.ExecuteStoredProcedureDataTableAsync(spname, parameters);

                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["Result"].ToString() != "")
                    {
                        TxtResult.Text = dt.Rows[0]["Result"].ToString();
                        PResult.InnerText = dt.Rows[0]["Result"].ToString();
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "a1", "alert('Data Fetch Successfully !');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "a2", "alert('Data Not Present !');", true);
                }
            }
            catch
            {
                throw;
            }
        }

        protected void BtnReset_Click(object sender, EventArgs e)
        {
            ClearAll();          
        }

        public void ClearAll()
        {
            TxtTableName.Text = string.Empty;
            TxtResult.Text = string.Empty;

            DdlCategory.SelectedIndex = 0;
            DdlCategory.SelectedIndex = 0;

            //Developer Tabl Controls
            TxtDeveloperTableName.Text = string.Empty;
            TxtDeveloper.Text = string.Empty;
            //TxtareaDeveloper.InnerText = string.Empty;

            DdlPageFunction.SelectedIndex = 0;
            DdlGVFunctionality.SelectedIndex = 0;
            DdlCSharpLogic.SelectedIndex = 0;
            DdlStringFunction.SelectedIndex = 0;
            DdlMathFunciton.SelectedIndex = 0;
            DdlDateFunciton.SelectedIndex = 0;

          
        }

        //##########    DEVELOPER   ################

        protected async void BtnDeveloperSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string spname = "AKSS_CODE";

                SqlParameter[] parameters = {
                    new SqlParameter("@TableName", TxtDeveloperTableName.Text.Trim()),
                    new SqlParameter("@SQL_Developer", "DEVELOPER"),
                    new SqlParameter("@SQL_Developer_DdlPageFunction", DdlPageFunction.SelectedValue.Trim()),
                    new SqlParameter("@SQL_Developer_DdlGVFunctionality", DdlGVFunctionality.SelectedValue.Trim()),
                    //@TableName NVARCHAR(MAX) = NULL,
                    //@SQL_Flag NVARCHAR(MAX) = NULL,
                    //@SQL_SubFlag NVARCHAR(MAX) = NULL,
                    //@SQL_Developer NVARCHAR(MAX) = NULL,
                    //@SQL_DBA NVARCHAR(MAX) = NULL,
                    //@SQL_Designer NVARCHAR(MAX) = NULL,
                    //@SQL_Developer_DdlPageFunction NVARCHAR(MAX) = NULL,
                    //@SQL_Developer_DdlGVFunctionality NVARCHAR(MAX) = NULL,
                    //@SQL_Developer_DdlCSharpLogic NVARCHAR(MAX) = NULL,
                    //@SQL_Developer_DdlStringFunction NVARCHAR(MAX) = NULL,
                    //@SQL_Developer_DdlMathFunciton NVARCHAR(MAX) = NULL,
                    //@SQL_Developer_DdlDateFunciton NVARCHAR(MAX) = NULL
                };
                DataTable dt = await CommonUtility.ExecuteStoredProcedureDataTableAsync(spname, parameters);

                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["Result"].ToString() != "")
                    {
                        TxtDeveloper.Text = dt.Rows[0]["Result"].ToString();                        
                        PResult.InnerText = dt.Rows[0]["Result"].ToString();
                        //TxtareaDeveloper.InnerText = dt.Rows[0]["Result"].ToString();
                        //TxtareaDeveloper.InnerHtml = dt.Rows[0]["Result"].ToString();
                        //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "a1", "alert('Data Fetch Successfully !');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "a2", "alert('Data Not Present !');", true);
                }
            }
            catch
            {
                throw;
            }
        }


    }
}
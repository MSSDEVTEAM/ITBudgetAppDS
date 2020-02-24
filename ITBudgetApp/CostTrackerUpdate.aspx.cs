using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITBudgetApp
{
    public partial class CostTrackerUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddCostCentre_SelectedIndexChanged(object sender, EventArgs e)
        {
           ddCost.DataBind();
        }


        protected void ddShowNet_SelectedIndexChanged(object sender, EventArgs e)
        {
            ITBudgetAppDataContext it = new ITBudgetAppDataContext();


            int Month = int.Parse(ddMonth.SelectedValue.ToString());
            int Year = int.Parse(ddYear.SelectedValue.ToString());
            int CostId = int.Parse(ddCost.SelectedValue.ToString());
            int CompanyId = int.Parse(ddCompany.SelectedValue.ToString());
            int NetOrGross = int.Parse(ddShowNet.SelectedValue.ToString());

            var dt = it.usp_Tracker_Get(Month, Year, CostId, CompanyId).FirstOrDefault();
            

            if (NetOrGross == 1)
            {
                txtCurrentBudget.Text = dt.CurrentYearBudgetedNet.ToString();
                txtPreviousBudget.Text = dt.PreviousYearBudgetedNet.ToString();
                txtBilled.Text = dt.ActualNet.ToString();
                txtDifference.Text = dt.DifferenceNet.ToString();
                txtHiddenId.Text = dt.Id.ToString();

            }
            else
            {
                txtCurrentBudget.Text = dt.CurrentYearBudgetedGross.ToString();
                txtPreviousBudget.Text = dt.PreviousYearBudgetedGross.ToString();
                txtBilled.Text = dt.ActualGross.ToString();
                txtDifference.Text = dt.DifferenceGross.ToString();
                txtHiddenId.Text = dt.Id.ToString();
            }


 
        }

        protected void btnUpdateItems_Click(object sender, EventArgs e)
        {

            int IsNet = int.Parse(DDIsNet.SelectedValue.ToString());
            if (IsNet == -1)
            {
                lblError.Visible = true;
            }
            else
            {

                ITBudgetAppDataContext it = new ITBudgetAppDataContext();

                decimal PreviousBudget = Decimal.Parse(txtPreviousBudget.Text.ToString());
                decimal CurrentBudget = Decimal.Parse(txtCurrentBudget.Text.ToString());
                decimal Billed = Decimal.Parse(txtBilled.Text.ToString());
                int Id = int.Parse(txtHiddenId.Text.ToString());

                var dt = it.usp_Tracker_Update(PreviousBudget, CurrentBudget, Billed, Id, IsNet);

                Response.Redirect("CostTrackerUpdate.aspx");

                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage",
                //"alert('" + "Item Added" + "'); window.location='" + Request.ApplicationPath + "/CostTrackerUpdate.aspx';", true);

             



            }







        }

        protected void DDIsNet_SelectedIndexChanged(object sender, EventArgs e)
        {
            int IsNet = int.Parse(DDIsNet.SelectedValue.ToString());
            if (IsNet == -1)
            {
                lblError.Visible = true;
            }
            else
            {
                lblError.Visible = false;
            }
        }


    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridOverview {
    public partial class Default : System.Web.UI.Page {

        protected void grid_SummaryDisplayText(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewSummaryDisplayTextEventArgs e) {
            var categoryName = grid.GetRowValues(e.VisibleIndex, "CategoryName");
            var count = (Int32)e.Value;
            var text = String.Format("Category {0} contains {1} product{2}", categoryName, count, (count > 1) ? "s" : "");
            e.Text = text;
        }
    }
}
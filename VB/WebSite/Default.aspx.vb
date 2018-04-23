Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace GridOverview
	Partial Public Class [Default]
		Inherits System.Web.UI.Page

		Protected Sub grid_SummaryDisplayText(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxGridView.ASPxGridViewSummaryDisplayTextEventArgs)
			Dim categoryName = grid.GetRowValues(e.VisibleIndex, "CategoryName")
			Dim count = CInt(Fix(e.Value))
			Dim text = String.Format("Category {0} contains {1} product{2}", categoryName, count,If((count > 1), "s", ""))
			e.Text = text
		End Sub
	End Class
End Namespace
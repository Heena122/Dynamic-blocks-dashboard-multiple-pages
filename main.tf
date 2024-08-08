resource "newrelic_one_dashboard" "task_terr_dash" {
  for_each    = var.dashboard
  name        = each.value.name
  permissions = each.value.permissions

  dynamic "page" {
    for_each = each.value.pages
    content {
      name = page.value.pagename

      dynamic "widget_pie" {
        # for_each = page.value.var.widget_pie_status == page.value.pie ?[page.value]:[]
        for_each = page.value.widget_pie_status == true ? page.value.pie:{}
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          height = widget.value.height
          width  = widget.value.width
          
          nrql_query {
            query = widget.value.query
          }
        }
      }

      dynamic "widget_bar" {
        # for_each = page.value.bar
        for_each = page.value.widget_bar_status == true ? page.value.bar:{}
        iterator = widgets
        content {
          title  = widgets.value.title
          row    = widgets.value.row
          column = widgets.value.column
          height = widgets.value.height
          width  = widgets.value.width
          nrql_query {
            query = widgets.value.query
          }
        }
      }
      dynamic "widget_area" {
        for_each =page.value.widget_area_status == true ? page.value.area:{}
        # for_each = page.value.billboard
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          height = widget.value.height
          width  = widget.value.width
          nrql_query {
            query = widget.value.query
          }
        }
      }
      dynamic "widget_line" {
         for_each =page.value.widget_line_status == true ? page.value.line:{}
        # for_each = page.value.billboard
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          height = widget.value.height
          width  = widget.value.width
          nrql_query {
            query = widget.value.query
          }
        }
      }

       dynamic "widget_billboard" {
         for_each =page.value.widget_billboard_status == true ? page.value.billboard:{}
        # for_each = page.value.billboard
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          height = widget.value.height
          width  = widget.value.width
          nrql_query {
            query = widget.value.query
          }
        }
      }
      
       dynamic "widget_table" {
         for_each =page.value.widget_table_status == true ? page.value.table:{}
        iterator = widget
        content {
          title  = widget.value.title
          row    = widget.value.row
          column = widget.value.column
          height = widget.value.height
          width  = widget.value.width
          nrql_query {
            query = widget.value.query
          }
        }
      }

    }
  }
}
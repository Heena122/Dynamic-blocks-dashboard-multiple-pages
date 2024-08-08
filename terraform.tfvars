dashboard = {
  "dash" = {
    name        = "dashoard-new"
    permissions = "public_read_only"
    pages = {
      "1" = {
        widget_pie_status=true
        widget_bar_status=true
        widget_area_status=false
        widget_line_status=false
        widget_billboard_status=true
        widget_table_status=false
        widget_bullet_status=true
        pagename = "Page 1"
        pie = {
          "key2" = {
            title  = "apdex"
            row    = 1
            column = 1
            width  = 6
            height = 3
            query  = "FROM Transaction SELECT apdex(duration, 0.5) WHERE appName = 'apm-vs-relicstaurants' SINCE 2 days ago"
          }
        }
        bullet={
         
             "key3" = {
            title  = "receiveBytesPerSecond"
            row    = 1
            column = 7
            width  = 6
            height = 3
            query  = "FROM NetworkSample SELECT average(receiveBytesPerSecond) WHERE entityName='CEQ-ICT-LAPTOP-269'"
          }
        }
        bar = {

          "key7" = {
            title  = "3"
            row    = 4
            column = 1
            width  = 6
            height = 3
            query  = "FROM Transaction SELECT count(*) FACET name WHERE appName = 'apm-vs-relicstaurants' SINCE 2 days ago"
          }

        },
          billboard = {
          "key2" = {
            title  = "apdex"
            row    = 4
            column = 7
            width  = 6
            height = 3
            query  = "FROM Transaction SELECT apdex(duration, 0.5) WHERE appName = 'apm-vs-relicstaurants' SINCE 2 days ago"
          }
        }
      },
      "2" = {
        widget_area_status=true
        widget_pie_status=false
        widget_bar_status=false
        widget_line_status=true
        widget_billboard_status=false
        widget_table_status=true
        widget_bullet_status=false
        pagename = "Page 2"
        area = {
          "key11" = {
            title  = "cpuIdlePercent"
            row    = 1
            column = 1
            width  = 6
            height = 3
            query  = "FROM SystemSample SELECT average(cpuIdlePercent) WHERE entityName='CEQ-ICT-LAPTOP-269' TIMESERIES 1 minute"
          }
         
        }
        line = {
          "key16" = {
            title  = "memoryUsedPercent"
            row    = 1
            column = 7
            width  = 6
            height = 3
            query  = "FROM SystemSample SELECT average(memoryUsedPercent) WHERE entityName='CEQ-ICT-LAPTOP-269' TIMESERIES"
          }
         
         
         
        },
        billboard={
            "key16" = {
            title  = "diskUsedPercent"
            row    = 4
            column = 1
            width  = 6
            height = 3
            query  = "FROM StorageSample SELECT average(diskUsedPercent) WHERE entityName='CEQ-ICT-LAPTOP-269'"
          }
        },
          table={
            "key16" = {
            title  = "3"
            row    = 7
            column = 1
            width  = 6
            height = 3
            query  = "FROM NetworkSample SELECT average(receiveBytesPerSecond) WHERE entityName='CEQ-ICT-LAPTOP-269'"
          }

        }
        
      }
    }
  }
}

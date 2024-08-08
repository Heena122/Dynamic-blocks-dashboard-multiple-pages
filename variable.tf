variable "dashboard" {
  type = any
}

# variable "dashboard" {
#   type = object({
#     dash = object({
#       name        = string
#       permissions = string
#       pages       = map(object({
#         widget_pie_status  = bool
#         widget_bar_status  = bool
#         widget_line_status = bool
#         pagename           = string
#         pie = map(object({
#           title  = string
#           row    = number
#           column = number
#           width  = number
#           height = number
#           query  = string
#         }))
#         bar = map(object({
#           title  = string
#           row    = number
#           column = number
#           width  = number
#           height = number
#           query  = string
#         }))
#       }))
#     })
#   })
# }

#  variable "widget_pie_status" {
#    type = bool
#  }
# variable "widget_bar_status" {
#     type = bool
#         }
# variable "widget_line_status" {
#     type = bool
#         }
      

# variable "dashboard" {
#   type = map(object({
#     name =string
#     permissions=string
#     pages=map(object({
#       name = string
#       widgets=map(object({
#         title=string
#         type=string
#         nrql=string
#         row=number
#         column=number
#         height=number
#         width=number
#       }))
#     }))
#   }))
# }
// value?if true then this:if not then this
//condition ? statement1(if condition true) : statement2(if condition false)
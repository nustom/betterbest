module ApplicationHelper
  def flash_class(level)
    case level
    when :notice then "success"
    when :error then "danger"
    when :alert then "warning"
    end
  end

  #Render model errors when submitting a form
  def form_errors(object)
    unless object.errors.empty?
      html = content_tag(:div, class: "row") do
        content_tag(:div, class: "col-md-12") do
          content_tag(:div, class: "alert alert-dismissable alert-danger") do
            #content_tag(:button, "&times;", type: "button", class: "close", "data-dismiss": "alert", "aria-hidden": true)
            html = '<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'
            object.errors.full_messages.each do |m|
              html += "#{m}.<br />"
            end
            html.html_safe
          end
        end
      end
    end
  end

end

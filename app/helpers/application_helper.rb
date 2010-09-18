# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def tooltip(content, options = {}, html_options = {}, *parameters_for_method_reference)
  html_options[:title] = options[:tooltip]
  html_options[:class] = html_options[:class] || ‘tooltip’
  content_tag("span", content, html_options)
  end
end

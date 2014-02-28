module ApplicationHelper
  def nav_item(link, rule = nil, resource, &block)
    options ||= {}

    if rule.nil?
      # set up active
      options[:class] = 'active' if Rails.application.routes.recognize_path(link)[:controller] == params[:controller]
    else
      options[:class] = 'active' if link =~ rule
    end

    if block_given?
      content_tag_string(:li, capture(&block), options, true)
    else
      content_tag_string(:li, nil, options, true)
    end
  end
end

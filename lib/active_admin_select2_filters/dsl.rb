require "activeadmin"

module ActiveAdminSelect2Filters
  module DSL

    def select2_filter(attribute, options = {})

      # init input_html if necessary
      options[:input_html] ||= {}

      # add input_html class
      if options[:input_html][:class]
        options[:input_html][:class] += " select2-filter"
      else
        options[:input_html][:class] = "select2-filter"
      end

      config.add_filter(attribute, options)
    end

  end
end

ActiveAdmin::ResourceDSL.send :include, ActiveAdminSelect2Filters::DSL

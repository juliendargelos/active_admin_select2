module ActiveAdmin
  module Inputs
    class Select2Input < ::Formtastic::Inputs::StringInput
      def input_html_options
        super.tap do |options|
          options[:class] = [options[:class], "select2-field"].compact.join(' ')
          options[:data] ||= {}
          options[:data].merge! select2_options
        end
      end

      private
        def select2_options
          options = self.options.fetch(:select2_options, {})
          options = Hash[options.map{ |k, v| [k.to_s.camelcase(:lower), v] }]
          { select2_options: options }
        end
    end
  end
end

ActiveAdmin::Inputs.send :autoload, :Select2Input

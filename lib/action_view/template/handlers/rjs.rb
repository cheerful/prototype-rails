module ActionView
  module Template::Handlers
    class RJS
      # Default format used by RJS.
      class_attribute :default_format
      self.default_format = Mime[:js]

      if Rails::VERSION::MAJOR == 6
        def call(template, source)
          "update_page do |page|;#{source}\nend"
        end
      end

      if Rails::VERSION::MAJOR == 5
        def call(template)
          "update_page do |page|;#{template.source}\nend"
        end
      end
    end
  end
end


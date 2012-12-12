require 'haml'
require 'nanoc'
require 'presso/context'

module Presso
  module Filters
    class Haml < ::Nanoc::Filter
      identifier :haml

      def run(content, params = {})
        options = params.merge(:filename => filename)

        # Create context
        context = Presso::Context.new(assigns) do
          extend Nanoc::Helpers::LinkTo
        end

        # Get result
        proc = assigns[:content] ? lambda { assigns[:content] } : nil
        ::Haml::Engine.new(content, options).render(context, assigns, &proc)
      end
    end
  end
end

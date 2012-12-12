module Presso
  class Context
    def initialize(assigns_hash = {}, &block)
      assigns_hash.each do |key, value|
        create_instance_variable_for key, value
      end

      instance_eval &block if block_given?
    end

    def create_instance_variable_for(key, value)
      instance_variable_set "@#{key}", value
    end
  end
end

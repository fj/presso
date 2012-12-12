require 'spec_helper'
require 'presso/context'

module Presso
  describe Context do
    describe "#initialize" do
      let(:assigns) { {:foo => 'bar', :baz => 'box'} }

      it "creates an instance variable for each assignment" do
        expect(described_class.new(assigns).instance_variables).to \
          have_exactly(assigns.keys.count).items
      end

      it "executes the block via instance_eval" do
        described_class.any_instance.should_receive :target
        described_class.new { target }
      end
    end
  end
end

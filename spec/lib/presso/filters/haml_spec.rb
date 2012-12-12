require 'spec_helper'
require 'presso/filters/haml_filter'
require 'nanoc'

module Presso::Filters
  describe Haml do
    it "should process Haml for nanoc" do
      expect(Nanoc::PluginRegistry.instance.find Nanoc::Filter, :haml).to eq described_class
    end
  end
end

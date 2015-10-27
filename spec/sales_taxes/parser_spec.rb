require 'spec_helper'
module SalesTaxes
  describe Parser,"#input" do
    it "should raise error if now string is passed to Parser" do
      expect{Parser.new().input}.to raise_error(RuntimeError, 'Nothing is passed to Parser')
    end
end
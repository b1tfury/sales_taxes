require 'spec_helper'
module SalesTaxes
  describe Parser,"#input" do
    it "should raise error if now string is passed to Parser" do
      expect{Parser.new()}.to raise_error(RuntimeError, 'Nothing is passed to Parser')
    end
    it "should return input string as output" do
      expect(Parser.new("1 book at 12.49").input).to eq("1 book at 12.49")
    end
  end
end
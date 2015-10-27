require 'spec_helper'
module SalesTaxes
  describe Parser,"#input" do
    it "should raise error if now string is passed to Parser" do
      expect{Parser.new().input}.to raise_error(RuntimeError, 'Nothing is passed to Parser')
    end
    it "should return input string as output" do
      expect(Parser.new("1 book at 12.49").input).to eq("1 book at 12.49")
    end
  end

  describe Parser,"#parse" do
    it "should return the parsed values for a non imported item" do
      expect(Parser.new("1 book at 12.49").parse).to have_attributes(:quantity => 1,:imported => false,:good => "book",:price => 12.49)
    end
    it "should return the parsed values for a imported good" do
      expect(Parser.new("1 imported bottle of perfume at 27.99").parse).to have_attributes(:quantity => 1,:imported => true,:good => "bottle of perfume",:price => 27.99)
    end
  end
end
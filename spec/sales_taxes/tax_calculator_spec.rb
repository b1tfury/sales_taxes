module SalesTaxes
  describe TaxCalculator do
    it "should raise error if something is not given to calculate tax" do
      expect{TaxCalculator.new.calculate}.to raise_error(RuntimeError,"No input was given to calculate tax")
    end
  end
end
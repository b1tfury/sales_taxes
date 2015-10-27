module SalesTaxes
  describe TaxCalculator do
    it "should raise error if something is not given to calculate tax" do
      expect{TaxCalculator.new.calculate}.to raise_error(RuntimeError,"No input was given to calculate tax")
    end
    it "should calculate the tax of non imported good" do
      expect(TaxCalculator.new("1 music CD at 14.99").calculate).to eq(1.50)
    end
    it "should calculate the tax of imported good" do
      expect(TaxCalculator.new("1 imported bottle of perfume at 27.99").calculate).to eq(4.20)
    end
    it "should return 0 tax for books, food,and medical products" do
      expect(TaxCalculator.new("1 book at 12.49").calculate).to eq(0)
    end
  end
end
module SalesTaxes
  class TaxCalculator
    def initialize(item= nil)
      @item = item
    end
    def calculate
      if @item == nil
        raise "No input was given to calculate tax"
      end
    end
  end
end



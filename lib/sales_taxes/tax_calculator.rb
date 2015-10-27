module SalesTaxes
  class TaxCalculator
    SALES_TAX = 0.10
    IMPORT_DUTY = 0.05
    def initialize(item= nil)
      @item = item
      @sales_tax = 0
    end
    def calculate
      if @item == nil
        raise "No input was given to calculate tax"
      else
        item_details = Parser.new(@item).parse
        if item_details.imported
          @sales_tax = (SALES_TAX + IMPORT_DUTY)* item_details.price
        else
          @sales_tax = SALES_TAX*item_details.price
        end
        round_off(@sales_tax)
      end
    end
    def round_off(amount)
        amount.round(2)
    end
  end
end



module SalesTaxes
  class TaxCalculator
    SALES_TAX = 0.10
    IMPORT_DUTY = 0.05
    NON_TAXABLE_ITEMS = ["book","box of chocolates","packet of headache pills","chocolate bar"]
    def initialize(item= nil)
      @item = item
      @sales_tax = 0
    end
    def calculate
      if @item == nil
        raise "No input was given to calculate tax"
      else
        item_details = Parser.new(@item).parse
        item_details.price *= item_details.quantity
        if item_details.imported
          @sales_tax = IMPORT_DUTY*item_details.price
        end
        @sales_tax = round_off(@sales_tax)
        if !NON_TAXABLE_ITEMS.include? item_details.good
          @sales_tax += SALES_TAX* item_details.price
        end
      @sales_tax = round_off(@sales_tax)
      @sales_tax
    end
    end
    def round_off(amount)
      (amount*20).ceil/20.0
    end
  end
end



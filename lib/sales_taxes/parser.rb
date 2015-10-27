module SalesTaxes
  class Parser
    def initialize(input=nil)
      @input  = input
      @item = Struct.new(:quantity,:imported,:good,:price)
    end
    def input
      if @input == nil
        raise "Nothing is passed to Parser"
      else
        return @input
      end
    end

    def parse
      name_price = @input.split(" at ")
      item = @item.new
      item.price = name_price[1].to_f
      product_details = name_price[0].split(" ")
      item.quantity = product_details[0].to_i
      good = ""
      if product_details[1,product_details.size].include? "imported"
        item.imported = true
      else
        item.imported = false
      end
      good = product_details[1,product_details.size]
      item.good = ""
      good.each do |i|
        if i != "imported"
          item.good += i+ " "
        end
      end
      item.good.strip!
      item
    end
  end
end

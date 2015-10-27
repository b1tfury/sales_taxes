module SalesTaxes
  class Parser
    def initialize(input=nil)
      @input  = input
    end

    def input
      if @input == nil
        raise "Nothing is passed to Parser"
      else
        return @input
      end
    end
  end
end
module SalesTaxes
  class Parser
    def intialize(input=nil)
      @input  = input
    end

    def input
      if @input == nil
        raise "Nothing is passed to Parser"
      else
        @input
      end
    end
  end
end
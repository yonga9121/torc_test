require_relative "product"
require_relative "../taxes/basic_tax_strategy"
require_relative "../taxes/imported_tax_strategy"


class Generic < Product

    private

    def taxes
      taxes = []
      taxes << BasicTaxStrategy.new(self)
      taxes << ImportedTaxStrategy.new(self) if imported?
      taxes
    end

end

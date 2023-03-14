require_relative "product"
require_relative "../taxes/imported_tax_strategy"

class Food < Product

    FIT_KEYWORDS = %w(chocolate chocolates)

    private

    def taxes
      taxes = []
      taxes << ImportedTaxStrategy.new(self) if imported?
      taxes
    end

end

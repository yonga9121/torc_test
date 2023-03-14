require_relative "product"
require_relative "../taxes/imported_tax_strategy"

class Book < Product

    FIT_KEYWORDS = %w(book)

    private

    def taxes
      taxes = []
      taxes << ImportedTaxStrategy.new(self) if imported?
      taxes
    end

end

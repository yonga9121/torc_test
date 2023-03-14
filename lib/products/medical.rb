require_relative "product"
require_relative "../taxes/imported_tax_strategy"

class Medical < Product

  FIT_KEYWORDS = %w(pills)

    private

    def taxes
      taxes = []
      taxes << ImportedTaxStrategy.new(self) if imported?
      taxes
    end


  end

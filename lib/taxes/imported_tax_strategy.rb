require_relative "../tax_strategy"

class ImportedTaxStrategy < TaxStrategy

    IMPORTED_TAX = 0.05

    def calculate
      Utils::NumericUtils.nearest_round(tax_value * product.price, 20)
    end

    def tax_value
      IMPORTED_TAX
    end

  end

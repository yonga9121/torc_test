require_relative "../tax_strategy"
require_relative "../utils/numeric_utils"

class BasicTaxStrategy < TaxStrategy

    BASIC_TAX = 0.1

    def calculate
      Utils::NumericUtils.nearest_round(tax_value * product.price, 20)
    end

    def tax_value
      BASIC_TAX
    end

end

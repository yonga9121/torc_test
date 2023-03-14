class TaxStrategy

  def initialize(product)
    @product = product
  end

  def calculate
    raise NotImplementedError, "Not implemented yet"
  end

  def tax_value
    raise NotImplementedError, "Not implemented yet"
  end

  def total
    product.total + tax_value
  end

  private

  attr_reader :product


end

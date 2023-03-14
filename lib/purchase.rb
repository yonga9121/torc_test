require_relative "product_factory"
require_relative "product_with_taxes_decorator"

class Purchase

  def initialize()
    @products = []
  end

  def add_item(item)
    @products << ProductWithTaxesDecorator.new(
      ProductFactory.create( item )
    )
  end

  def total
    @products.sum do |product|
      product.total
    end
  end

  def sale_tax
      @products.sum do |product|
        product.tax
      end
  end

  def to_s
    (products.map(&:to_s) + ["Sale Taxes: #{"%.2f" % sale_tax}\nTotal: #{"%.2f" % total}"]).join("\n")
  end

  private

  attr_reader :products

end

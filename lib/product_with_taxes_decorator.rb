class ProductWithTaxesDecorator

    def initialize(product)
      @product = product
    end

    def total
      ((product.price + product.tax) * product.quantity).round(2)
    end

    def tax
      product.tax * product.quantity
    end

    def quantity
      product.quantity
    end

    def name
      product.name
    end

    def to_s
      "#{quantity} #{name}: #{"%.2f" % total}"
    end

    private

    attr_reader :product

end


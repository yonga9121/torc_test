require_relative "products/product"
require_relative "products/book"
require_relative "products/food"
require_relative "products/medical"
require_relative "products/generic"

class ProductFactory

  def self.create(product_info)
    case type_of_product(product_info[:name])
    when :book
      Book.new(
        name: product_info[:name],
        price: product_info[:price],
        quantity: product_info[:quantity],
        imported: product_info[:imported]
      )
    when :food
      Food.new(
        name: product_info[:name],
        price: product_info[:price],
        quantity: product_info[:quantity],
        imported: product_info[:imported]
      )
    when :medical
      Medical.new(
        name: product_info[:name],
        price: product_info[:price],
        quantity: product_info[:quantity],
        imported: product_info[:imported]
      )
    else
      Generic.new(
        name: product_info[:name],
        price: product_info[:price],
        quantity: product_info[:quantity],
        imported: product_info[:imported]
      )
    end
  end

  def self.type_of_product(product_name)
    return :book if Book::FIT_KEYWORDS.any?{|word| product_name.split(" ").include?(word) }
    return :food if Food::FIT_KEYWORDS.any?{|word| product_name.split(" ").include?(word) }
    return :medical if Medical::FIT_KEYWORDS.any?{|word| product_name.split(" ").include?(word) }
    :generic
  end

end

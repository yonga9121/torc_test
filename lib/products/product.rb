require_relative "../utils/numeric_utils"

class Product

  FIT_KEYWORDS = []

  attr_reader :name, :price, :quantity, :imported

  def initialize(name: , price: , quantity: , imported: false)
    @name = name
    @price = price
    @quantity = quantity
    @imported = imported
  end

  def tax
    taxes.sum do |tax|
      tax.calculate
    end
  end

  def imported?
    imported
  end

  private

  def nearest_round(val, nearest)
    ((val * nearest).ceil / nearest.to_f)
  end

  def taxes
    raise NotImplementedError, "Not implemented yet"
  end

end

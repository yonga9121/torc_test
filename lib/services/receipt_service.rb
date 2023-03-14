require_relative "../service_object"
require_relative "../product_factory"
require_relative "../purchase"

class ReceiptService < ServiceObject

  def call
    inputs = @args.first
    purchases = []
    inputs.each do |input|
      purchase = Purchase.new
      input.each do |line|
        purchase.add_item(
            imported: line.include?("imported"),
            quantity: line.split(" ").first.to_i,
            name: line.split(" at ").first.split(" ").drop(1).join(" "),
            price: line.split(" at ").last.strip.to_f
        )
      end
      purchases << purchase
    end
    purchases
  end

end

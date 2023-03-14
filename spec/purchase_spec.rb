RSpec.describe Purchase do

  let(:purchase) { described_class.new }

  describe "#add_item" do
    let(:product_info) { { name: "book", price: 12.49, quantity: 1, imported: false } }

    it "adds a product to the purchase" do
      purchase.add_item(product_info)
      expect(purchase.total).to eq(12.49)
    end

  end

  describe "#total" do
    let(:product_info) { { name: "book", price: 12.49, quantity: 1, imported: false } }

    it "returns the total of the purchase" do
      purchase.add_item(product_info)
      expect(purchase.total).to eq(12.49)
    end

  end

  describe "#sale_tax" do
    let(:product_info) { { name: "book", price: 12.49, quantity: 1, imported: false } }

    it "returns the total of the sale tax" do
      expect(purchase.sale_tax).to eq(0)
    end

  end

  describe "#to_s" do
    let(:product_info) { { name: "book", price: 12.49, quantity: 1, imported: false } }

    it "returns the total of the purchase" do
      purchase.add_item(product_info)
      expect(purchase.to_s).to eq("1 book: 12.49\nSale Taxes: 0.00\nTotal: 12.49")
    end

  end

end

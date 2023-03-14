RSpec.describe Product do

  let(:product) { described_class.new(name: "book", price: 12.49, quantity: 1, imported: false) }

  describe "#imported?" do

    context "when the product is imported" do
      let(:product) { described_class.new(name: "book", price: 12.49, quantity: 1, imported: true) }

      it "returns true" do
        expect(product.imported?).to eq(true)
      end
    end

    context "when the product is not imported" do
      let(:product) { described_class.new(name: "book", price: 12.49, quantity: 1, imported: false) }

      it "returns false" do
        expect(product.imported?).to eq(false)
      end
    end

  end

end

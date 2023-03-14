RSpec.describe Book do

  let(:product) { described_class.new(name: "book", price: 12.49, quantity: 1, imported: false) }

  describe "#tax" do

    it "returns the tax" do
      expect(product.tax).to eq(0)
    end

  end

end

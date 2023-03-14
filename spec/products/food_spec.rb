RSpec.describe Food do

  let(:product) { described_class.new(name: "chocolate bar", price: 0.85, quantity: 1, imported: false) }

  describe "#tax" do

    it "returns the tax" do
      expect(product.tax).to eq(0)
    end

  end

end

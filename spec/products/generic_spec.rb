RSpec.describe Generic do

  let(:product) { described_class.new(name: "music CD", price: 14.99, quantity: 1, imported: false) }

  describe "#tax" do

    it "returns the tax" do
      expect(product.tax).to eq(1.5)
    end

  end

end

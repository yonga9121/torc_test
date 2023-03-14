RSpec.describe Medical do

  let(:product) { described_class.new(name: "packet of headache pills", price: 9.75, quantity: 1, imported: false) }

  describe "#tax" do

    it "returns the tax" do
      expect(product.tax).to eq(0)
    end

  end

end

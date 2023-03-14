RSpec.describe ProductFactory do

  describe ".create" do

    context "when the product is a book" do
      let(:product_info) { { name: "book", price: 12.49, quantity: 1, imported: false } }

      it "returns a Book object" do
        expect(described_class.create(product_info)).to be_a(Book)
      end
    end

    context "when the product is a food" do
      let(:product_info) { { name: "chocolate bar", price: 0.85, quantity: 1, imported: false } }

      it "returns a Food object" do
        expect(described_class.create(product_info)).to be_a(Food)
      end
    end

    context "when the product is a medical" do
      let(:product_info) { { name: "packet of headache pills", price: 9.75, quantity: 1, imported: false } }

      it "returns a Medical object" do
        expect(described_class.create(product_info)).to be_a(Medical)
      end
    end

    context "when the product is a generic" do
      let(:product_info) { { name: "music CD", price: 14.99, quantity: 1, imported: false } }

      it "returns a Generic object" do
        expect(described_class.create(product_info)).to be_a(Generic)
      end
    end

  end

end

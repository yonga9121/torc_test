RSpec.describe ProductWithTaxesDecorator do

  let(:product) { Book.new(name: "book", price: 12.49, quantity: 1) }
  let(:decorator) { described_class.new(product) }

  it "returns the total price" do
    expect(decorator.total).to eq(12.49)
  end

  it "returns the tax" do
    expect(decorator.tax).to eq(0.0)
  end

  it "returns the quantity" do
    expect(decorator.quantity).to eq(1)
  end

  it "returns the name" do
    expect(decorator.name).to eq("book")
  end

  it "returns the string representation" do
    expect(decorator.to_s).to eq("1 book: 12.49")
  end

end

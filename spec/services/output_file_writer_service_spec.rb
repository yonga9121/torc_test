RSpec.describe OutputFileWriterService do

  let(:purchases) { [Purchase.new] }

  describe "#call" do

    it "writes the output to a file" do
      expect(File).to receive(:open).with("output.txt", "w")
      purchases.first.add_item(name: "book", price: 12.49, quantity: 1, imported: false)
      described_class.new(purchases).call
    end

  end

end

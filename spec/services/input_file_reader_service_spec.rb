RSpec.describe ImputFileReaderService do

  let(:service) { described_class.new }

  describe "#call" do

    it "returns the inputs" do
      expect(service.call).to eq([
        ["2 book at 12.49\n", "1 music CD at 14.99\n", "1 chocolate bar at 0.85\n"],
        ["1 imported box of chocolates at 10.00\n", "1 imported bottle of perfume at 47.50\n"],
        ["1 imported bottle of perfume at 27.99\n", "1 bottle of perfume at 18.99\n",
          "1 packet of headache pills at 9.75\n", "3 imported boxes of chocolates at 11.25\n"],
      ])
    end

  end

end

RSpec.describe RecieptService do

  let(:input) { [["1 book at 12.49"], ["1 music CD at 14.99"], ["1 chocolate bar at 0.85"]] }
  let(:service) { described_class.new(input) }

  describe "#call" do

    it "returns the purchases" do
      expect(service.call.first).to be_a(Purchase)
    end

  end

end

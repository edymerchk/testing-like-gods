describe Temperature do

  describe "#get" do
    it "returns the temperature of Medellin" do
      expect(Temperature.get).to eq 21
    end
  end
end

require 'rails_helper'

describe Calculator do

  describe ".sum" do
    context "with 2 numbers" do
      it "returns the sum" do
        expect(Calculator.sum(1,3)).to eq 4
      end
    end
    context "with more than 2 numbers" do
      it "returns the sum" do
        expect(Calculator.sum(1,3, 4)).to eq 8
      end
    end
  end

  describe ".subtract" do
    it "subtract two numbers" do
      expect(Calculator.subtract(4,1)).to eq 3
    end
  end

  describe "#divide" do

    context "using a non-zero divisior" do
      it "divides two numbers" do
        expect(subject.divide(10,2)).to eq 5
      end
    end

    context "using a zero divisior" do
      it "raise an error" do
        expect{ subject.divide(10,0) }.to raise_error(ZeroDivisionError)
      end
    end
  end

end

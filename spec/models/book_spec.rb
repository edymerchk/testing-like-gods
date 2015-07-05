# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  title        :string
#  description  :text
#  price        :integer
#  release_date :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

describe Book do

  it "has a valid factory" do
    expect(build(:book)).to be_valid
  end

  describe "#is_released?" do
    context "when the book is released" do
      let(:book) { create(:book, :released) }
      it "returns true" do
        expect(book.is_released?).to be_truthy
      end
    end

    context "when the book is not released" do
      let(:book) { create(:book, :unreleased) }
      it "returns false" do
        expect(book.is_released?).to be_falsey
      end
    end
  end

end

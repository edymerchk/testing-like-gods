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

  describe 'Validations' do
    it { expect(subject).to validate_presence_of(:title) }
    it { expect(subject).to validate_presence_of(:description) }

    it { expect(subject).to validate_uniqueness_of (:title) }

    it do should validate_numericality_of(:price).
      is_greater_than_or_equal_to(1).
      is_less_than_or_equal_to(50)
    end

  end
end

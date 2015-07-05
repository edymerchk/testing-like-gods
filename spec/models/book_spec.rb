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

 it "returns true" do
    expect(subject.expensive).to be_truthy
 end

end

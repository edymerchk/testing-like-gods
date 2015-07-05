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

class Book < ActiveRecord::Base



  # validations
  validates_presence_of :title, :description
  validates_numericality_of :price, greater_than_or_equal_to: 1, less_than_or_equal_to: 50
  validates_uniqueness_of :title

end

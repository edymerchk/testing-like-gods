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
  validates_presence_of :title

  def is_released?
    release_date.past?
  end

  def expensive
    sleep 15
    true
  end
end

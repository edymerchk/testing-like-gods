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

FactoryGirl.define do
  factory :book do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    price [*1..50].sample
    release_date Faker::Time.between(DateTime.now-100, DateTime.now+100)

    trait :released do
      release_date Faker::Time.between(DateTime.now-100, DateTime.now-1)
    end

    trait :unreleased do
      release_date Faker::Time.between(DateTime.now+1, DateTime.now+100)
    end
  end
end

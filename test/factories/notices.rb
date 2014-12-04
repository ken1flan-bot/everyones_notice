# == Schema Information
#
# Table name: notices
#
#  id           :integer          not null, primary key
#  title        :string(255)      not null
#  body         :text
#  user_id      :integer          not null
#  published_at :datetime
#  status       :integer          default(0)
#  created_at   :datetime
#  updated_at   :datetime
#
# Indexes
#
#  index_notices_on_published_at  (published_at)
#  index_notices_on_user_id       (user_id)
#

FactoryGirl.define do
  factory :notice do
    title { "title" + ('a'..'z').to_a.sample(26).join }
    body { "body" + ('a'..'z').to_a.sample(26).join }
    user_id 1
    published_at { (rand(10) + 1).days.ago }
    status 1

    trait :draft do
      published_at nil
    end
  end
end

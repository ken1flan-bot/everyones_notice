# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  body       :text             not null
#  user_id    :integer          not null
#  type       :integer          default("0"), not null
#  url        :string
#  status     :integer          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_feedbacks_on_updated_at  (updated_at)
#  index_feedbacks_on_user_id     (user_id)
#

FactoryGirl.define do
  factory :feedback do
    title "MyString"
body "MyText"
user_id 1
type 1
url "MyString"
status 1
  end

end

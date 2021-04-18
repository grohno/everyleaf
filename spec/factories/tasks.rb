FactoryBot.define do
  factory :task do
    title { 'test_title' }
    content { 'test_content' }
    expired_at { '2021-05-01 03:24:00' }
  end
end

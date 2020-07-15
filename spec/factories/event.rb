require 'faker'

FactoryBot.define do
    factory :event do
      title { Faker::Name.first_name }
      event_type { Faker::Name.first_name }
      start_at { Faker::Time.between(from: 2.days.ago, to: Time.now)  }
      end_at { Faker::Time.forward(days: 23, period: :morning)   }
      description { Faker::Lorem.paragraph }
      association :owner, factory: :user
    end
  end
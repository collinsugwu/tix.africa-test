require 'rails_helper'

RSpec.describe Event, type: :model do
    user {
        User.new(name: 'Ugwu Collins', email:'dev@gmail.com', password: '123456')
    }
    user.save
    subject{Event.new(title: "In the light", 
        discription: "What is the best way to support a football club", 
        event_type: 'free', start_at: Time.now, end_at: Time.now)}
    before { subject.save }

    it 'title should be present' do
        subject.title = nill
        expect(subject).to_not be_valid
    end
end
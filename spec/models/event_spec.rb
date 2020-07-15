require 'rails_helper'

RSpec.describe Event, type: :model do
    let(:event) { FactoryBot.build(:event) }
  
    it 'is a valid event if it has all content' do
      expect(event).to be_valid
    end
  
    it 'is an invalid event if the title is empty' do
      event.title = ''
      expect(event).not_to be_valid
    end

    it 'is an invalid event if the title is empty' do
        event.description = ''
        expect(event).not_to be_valid
    end

    it 'is an invalid event if the title is empty' do
        event.event_type = ''
        expect(event).not_to be_valid
    end

    it 'is an invalid event if the title is empty' do
        event.start_at = ''
        expect(event).not_to be_valid
    end

    it 'is an invalid event if the title is empty' do
        event.end_at = ''
        expect(event).not_to be_valid
    end
  end
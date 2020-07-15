require 'rails_helper'

RSpec.describe Event, type: :model do
    let(:event) { FactoryBot.build(:event) }
  
    describe 'association' do
      it { belongs_to(:owner) }
    end
  
    it 'is a valid event if it has all content' do
      expect(event).to be_valid
    end
  
    it 'is an invalid event if the title is empty' do
      event.title = ''
      expect(event).not_to be_valid
    end
  end
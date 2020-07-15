
require 'rails_helper'

RSpec.describe User, type: :model do
  let(:new_user) { FactoryBot.build(:user) }
  
  describe 'associations' do
    it { have_many(:events) }
  end

  it 'is a valid user' do
    expect(new_user).to be_valid
  end

  it 'is invalid when user does not provide first name' do
    new_user.name = ''
    expect(new_user).not_to be_valid
  end

  it 'is invalid when user does not provide email' do
    new_user.email = ''
    expect(new_user).not_to be_valid
  end

  it 'requires the email address to look like an email' do
    new_user.email = 'jboltik'
    expect(new_user).to_not be_valid
  end
end
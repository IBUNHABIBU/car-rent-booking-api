require 'rails_helper'
RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  describe 'Creating User' do
    it 'should give a user name' do
      user.name = 'Maja'
      expect(user.name).to eq('Maja')
    end

    it 'should give a user email' do
      user.email = 'maja@gmail.com'
      expect(user.email).to eq('maja@gmail.com')
    end

    it { should have_secure_password }
  end

  describe 'User validation' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
end

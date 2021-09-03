require 'rails_helper'
RSpec.describe User, type: :model do
 let(:user) { create(:user)}
  describe 'Creating User' do 
   it 'should give a user name' do 
     user.name = 'Maja'
     expect(user.name).to eq('Maja')
   end
   
  end
  it { should have_secure_password }
end

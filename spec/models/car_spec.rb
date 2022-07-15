require 'rails_helper'
RSpec.describe Car, type: :model do
  let(:car) { create(:car) }
  describe 'Creating car' do
    it 'should give a car name' do
      car.color = 'Red'
      expect(car.color).to eq('Red')
    end

    it 'should give a car email' do
      car.engine = 'v8'
      expect(car.engine).to eq('v8')
    end
  end

  describe 'car validation' do
    it { should validate_presence_of(:color) }
    it { should validate_presence_of(:engine) }
    it { should validate_presence_of(:year) }
  end
end

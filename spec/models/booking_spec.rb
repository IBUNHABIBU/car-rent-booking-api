require 'rails_helper'
RSpec.describe Booking, type: :model do
  let(:booking) { create(:booking) }
  describe 'Creating booking' do
    it 'should give a booking name' do
      booking.name = 'Juma'
      expect(booking.name).to eq('Juma')
    end

    it 'should give a booking email' do
      booking.model = 'new model'
      expect(booking.model).to eq('new model')
    end
  end

  describe 'booking validation' do
    it { should validate_presence_of(:pickup) }
    it { should validate_presence_of(:model) }
    it { should validate_presence_of(:location) }
  end
end

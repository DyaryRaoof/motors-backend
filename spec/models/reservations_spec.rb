require 'rails_helper'

RSpec.describe Reservation, type: :model do
  context 'Testing validations on a single subject' do
    before(:all) do
      @user = User.new(name: 'Oliver')
      @user.save
    end

    subject do
      Reservation.new(user_id: @user.id, date: '2022-08-01', city: 'London')
    end
    after(:all) do
      @user.destroy
    end
    it 'is valid with the inserted valid attributes' do
      expect(subject).to be_valid
    end

    it 'user_id must not be blank' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end
  end
end

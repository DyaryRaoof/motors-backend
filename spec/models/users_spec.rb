require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Testing validations on a single subject' do
    subject { User.new(name: 'Dyary') }

    it 'is valid with the inserted valid attributes' do
      expect(subject).to be_valid
    end

    it 'name must not be blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'name length must be more than 3 letters' do
      subject.name = 'D'
      expect(subject).to_not be_valid
    end
  end
end

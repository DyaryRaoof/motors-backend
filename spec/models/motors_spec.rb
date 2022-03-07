require 'rails_helper'

RSpec.describe Motor, type: :model do
  context 'Testing validations on a single subject' do
    subject do
      Motor.new(name: 'Motor 10', description: 'this is a motor', price: 1000,
                image: 'https://i.ibb.co/JygvmW1/motor1.png')
    end

    it 'is valid with the inserted valid attributes' do
      expect(subject).to be_valid
    end

    it 'name must not be blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'description must not be blank' do
      subject.description = nil
      expect(subject).to_not be_valid
    end

    it 'image must not be blank' do
      subject.image = nil
      expect(subject).to_not be_valid
    end

    it 'price must be an integer greater than or equal to zero' do
      subject.price = -1
      expect(subject).to_not be_valid
    end
  end
end

require 'rails_helper'

describe Course do
  describe 'Validations' do
    describe 'valid attributes' do
      it 'is valid with a city, street, state, zip code and description' do
        student_1 = Student.create(name: 'Scott')
        address_1 = student_1.addresses.new(description: 'Summer Home', city: 'Denver', street: '1212 Oak Lane', state: 'CO', zip_code: 80006 )    

        expect(address_1).to be_valid
      end
    end

    describe 'invalid attributes' do
      it 'is invalid without a street' do
        student_1 = Student.create(name: 'Scott')
        address_1 = student_1.addresses.new(description: 'Summer Home', city: 'Denver', state: 'CO', zip_code: 80006 )
    
        expect(address_1).to be_invalid
      end

      it 'is invalid without a description' do
        student_1 = Student.create(name: 'Scott')
        address_1 = student_1.addresses.new(city: 'Denver', street: '1212 Oak Lane', state: 'CO', zip_code: 80006 )

        expect(address_1).to be_invalid
      end

      it 'is invalid without a state' do
        student_1 = Student.create(name: 'Scott')
        address_1 = student_1.addresses.new(description: 'Summer Home', city: 'Denver', street: '1212 Oak Lane', zip_code: 80006 )

        expect(address_1).to be_invalid
      end

      it 'is invalid without a zip code' do
        student_1 = Student.create(name: 'Scott')
        address_1 = student_1.addresses.new(description: 'Summer Home', city: 'Denver', street: '1212 Oak Lane', state: 'CO' )

        expect(address_1).to be_invalid
      end

      it 'is invalid without a city' do
        student_1 = Student.create(name: 'Scott')
        address_1 = student_1.addresses.new(description: 'Summer Home', city: 'Denver', state: 'CO', zip_code: 80006 )

        expect(address_1).to be_invalid
      end
    end
  end
end
require 'rails_helper'

describe Student do
  describe 'Validations' do
    describe 'valid attributes' do
      it 'is valid with a name' do
        student_1 = Student.new(name: 'Bobby')

        expect(student_1).to be_valid
      end
    end

    describe 'invalid attributes' do
      it 'is invalid without a name' do
        student_1 = Student.new()

        expect(student_1).to be_invalid
      end
    end
  end
end

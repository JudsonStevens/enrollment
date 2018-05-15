require 'rails_helper'

describe Course do
  describe 'Validations' do
    describe 'valid attributes' do
      it 'is valid with a name' do
        student_1 = Student.create(name: 'Bobby')
        course_1 = student_1.courses.new(name: 'Basket Weaving')

        expect(course_1).to be_valid
      end
    end

    describe 'invalid attributes' do
      it 'is invalid without a name' do
        student_1 = Student.create(name: 'Bobby')
        course_1 = student_1.courses.new()

        expect(course_1).to be_invalid
      end
    end
  end
end

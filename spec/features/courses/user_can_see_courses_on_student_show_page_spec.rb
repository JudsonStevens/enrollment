require 'rails_helper'

describe 'User' do
  it 'can see all courses on a students show page' do
    student_1 = Student.create(name: 'Scott')
    course_1 = student_1.courses.create(name: 'Basket Weaving')
    course_2 = student_1.courses.create(name: 'Underwater Basket Weaving')

    visit(student_path(student_1))

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(course_1.name)
    expect(page).to have_content(course_2.name)
  end
end
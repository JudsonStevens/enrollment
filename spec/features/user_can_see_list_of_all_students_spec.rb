require 'rails_helper'

describe 'User' do
  it 'can see a list of all users at the index page' do
    student_1 = Student.create(name: 'Bobby')
    student_2 = Student.create(name: 'Jane')
    student_3 = Student.create(name: 'Charles')
    student_4 = Student.create(name: 'Eric')

    visit(students_path)

    expect(page).to have_content(student_1.name)
    expect(page).to have_content(student_2.name)
    expect(page).to have_content(student_3.name)
    expect(page).to have_content(student_4.name)
  end
end
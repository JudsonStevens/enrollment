require 'rails_helper'

describe 'User' do
  it 'can click on a student name in the index and be taken to that show page' do
    student_1 = Student.create(name: 'Bobby')
    student_2 = Student.create(name: 'Xavier')

    visit(students_path)
    click_on('Bobby')

    expect(current_path).to eq(student_path(student_1))
    expect(current_path).to_not eq(students_path)
    expect(page).to have_content(student_1.name)
  end
end
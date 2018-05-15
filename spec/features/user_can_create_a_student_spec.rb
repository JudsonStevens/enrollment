require 'rails_helper'

describe 'User' do
  it 'can create a new student' do
    student_name = 'Bobby'

    visit(new_student_path)

    fill_in('student[name]', with: student_name)
    click_on('Create Student')

    expect(current_path).to eq(student_path(Student.first.id))
    expect(page).to have_content(student_name)
  end
end

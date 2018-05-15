require 'rails_helper'

describe 'User' do
  it 'can edit a user and be taken to the show page with the new info' do
    student_1 = Student.create(name: 'Lisa')

    visit(edit_student_path(student_1))

    fill_in('student[name]', with: 'Rogue')
    click_on('Edit Student')

    expect(current_path).to eq(student_path(student_1))
    expect(page).to have_content(student_1.name)
  end
end

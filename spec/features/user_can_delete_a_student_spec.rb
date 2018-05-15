require 'rails_helper'

describe 'User' do
  it 'can delete a student and be shown the index without the student' do
    student_1 = Student.create(name: 'Bobby')
    student_2 = Student.create(name: 'Xavier')
    
    visit(students_path)
    save_and_open_page
    click_on('Delete')

    expect(current_path).to eq(students_path)
    expect(page).to_not have_content(student_1.name)
    expect(page).to have_content(student_2.name)
  end
end
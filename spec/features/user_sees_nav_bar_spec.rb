require 'rails_helper'

describe 'User' do
  it 'can see the nav bar with links to index and student creation' do
    visit(students_path)

    expect(page).to have_link('Index', href: students_path)
    expect(page).to have_link('Create a New Student', href: new_student_path)
  end

  it 'takes the user to the index if the user clicks on Index' do
    visit(new_student_path)

    click_on('Index')

    expect(current_path).to eq(students_path)
    expect(current_path).to_not eq(new_student_path)
  end

  it 'takes the user to the new student creation form if the user clicks on Create a New Student' do
    visit(students_path)

    click_on('Create a New Student')

    expect(current_path).to eq(new_student_path)
    expect(current_path).to_not eq(students_path)
  end
end
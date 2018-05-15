require 'rails_helper'

describe 'User' do
  it 'can see the nav bar with links to index and student creation' do
    visit(students_path)

    expect(page).to have_link('Index', href: students_path)
    expect(page).to have_link('Create a New Student', href: new_student_path)
  end
end
require 'rails_helper'

describe 'User' do
  it 'can see an individual student' do
    student = Student.create(name: 'Bobby')

    visit student_path(student)

    expect(page).to have_content(student.name)
  end
end

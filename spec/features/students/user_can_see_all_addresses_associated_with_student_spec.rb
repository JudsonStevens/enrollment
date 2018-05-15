require 'rails_helper'

describe 'User' do
  it 'can see all associated addresses on student show page' do
    student_1 = Student.create(name: 'Scott')
    address_1 = student_1.addresses.create(description: 'Summer Home', city: 'Denver', street: '1212 Oak Lane', state: 'CO', zip_code: 80006 )
    address_2 = student_1.addresses.create(description: 'Winter Home', city: 'Baton Rouge', street: '1212 Oak Drive', state: 'LA', zip_code: 80002 )

    visit(student_path(student_1))

    expect(current_path).to eq(student_path(student_1))
    expect(current_path).to_not eq(students_path)
    expect(page).to have_content(address_1.city)
    expect(page).to have_content(address_1.description)
    expect(page).to have_content(address_1.state)
    expect(page).to have_content(address_1.street)
    expect(page).to have_content(address_1.zip_code)
    expect(page).to have_content(address_2.city)
    expect(page).to have_content(address_2.description)
    expect(page).to have_content(address_2.street)
    expect(page).to have_content(address_2.state)
    expect(page).to have_content(address_2.zip_code)
  end
end

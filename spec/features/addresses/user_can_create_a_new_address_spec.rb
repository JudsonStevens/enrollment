require 'rails_helper'

describe 'User' do
  it 'can create a new address' do
    description = 'Summer Home'
    street = '3455 Oak Lane'
    city = 'Denver'
    state = 'CO'
    zip_code = 80005

    student_1 = Student.create(name: 'Scott')

    visit(new_student_address_path(student_1))

    fill_in('address[description]', with: description)
    fill_in('address[street]', with: street)
    fill_in('address[city]', with: city)
    fill_in('address[state]', with: state)
    fill_in('address[zip_code]', with: zip_code)
    click_on('Create Address')

    expect(current_path).to eq(student_path(student_1))
    expect(current_path).to_not eq(students_path)
    expect(page).to have_content(student_1.name)
    expect(page).to have_content(description)
    expect(page).to have_content(street)
    expect(page).to have_content(city)
    expect(page).to have_content(state)
    expect(page).to have_content(zip_code)
  end
end

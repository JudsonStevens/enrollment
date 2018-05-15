class AddressesController < ApplicationController
  def new
    @student = Student.find(params[:student_id])
    @address = Address.new
  end

  def index
  end

  def create
    student = Student.find(params[:student_id])
    student.addresses.create(address_params)
  end

  private
  def address_params
    params.require(:address).permit(:description, :name, :city, :state, :zip_code)
  end
end

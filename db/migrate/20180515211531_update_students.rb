class UpdateStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :address_id
  end
end

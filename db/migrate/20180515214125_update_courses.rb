class UpdateCourses < ActiveRecord::Migration[5.2]
  def change
    add_reference :courses, :student, index: true, foreign_key: true
    add_reference :students, :course, index: true, foreign_key: true
  end
end

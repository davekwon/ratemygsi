class AddCourseRefToGsis < ActiveRecord::Migration[5.1]
  def change
    add_reference :gsis, :course, foreign_key: true
  end
end

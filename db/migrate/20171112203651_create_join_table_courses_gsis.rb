class CreateJoinTableCoursesGsis < ActiveRecord::Migration[5.1]
  def change
    create_join_table :courses, :gsis do |t|
      # t.index [:course_id, :gsi_id]
      # t.index [:gsi_id, :course_id]
    end
  end
end

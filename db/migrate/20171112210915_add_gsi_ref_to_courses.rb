class AddGsiRefToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :gsi, foreign_key: true
  end
end

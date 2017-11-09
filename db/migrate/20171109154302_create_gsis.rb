class CreateGsis < ActiveRecord::Migration[5.1]
  def change
    create_table :gsis do |t|
      t.string :name
      t.string :course
      t.string :rating
      t.string :comment

      t.timestamps
    end
  end
end

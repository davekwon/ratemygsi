class RemoveCommentFromGsi < ActiveRecord::Migration[5.1]
  def change
    remove_column :gsis, :comment, :string
  end
end

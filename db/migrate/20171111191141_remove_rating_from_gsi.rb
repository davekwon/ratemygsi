class RemoveRatingFromGsi < ActiveRecord::Migration[5.1]
  def change
    remove_column :gsis, :rating, :string
  end
end

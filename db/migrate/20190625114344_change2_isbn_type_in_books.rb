class Change2IsbnTypeInBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :isbn, :bigint
  end
end

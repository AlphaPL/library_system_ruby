class ChangeIsbnTypeInBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :isbn, :integer
  end
end

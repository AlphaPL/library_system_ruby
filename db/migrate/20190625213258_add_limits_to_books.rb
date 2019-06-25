class AddLimitsToBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :title, :string, limit: 100
    change_column :books, :description, :text, limit: 500
    change_column :books, :author, :string, limit: 100
    change_column :books, :isbn, :string, limit: 13
  end
end

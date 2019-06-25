class AddDefaultValuesToBooks < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :is_borrowed, :boolean, default: false
    change_column :books, :is_deleted, :boolean, default: false
    change_column :books, :is_requested, :boolean, default: false
  end
end

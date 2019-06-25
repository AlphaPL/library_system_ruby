class AddDefaultValuesToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :is_admin, :boolean, default: false
    change_column :users, :super_admin, :boolean, default: false
    change_column :users, :is_deleted, :boolean, default: false
  end
end

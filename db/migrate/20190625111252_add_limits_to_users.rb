class AddLimitsToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :name, :string, limit: 255
    change_column :users, :password_digest, :string, limit: 255
    change_column :users, :email, :string, limit: 255
    change_column :users, :address, :string, limit: 255
    change_column :users, :phone, :decimal, limit: 9
  end
end

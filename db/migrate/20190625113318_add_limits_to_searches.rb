class AddLimitsToSearches < ActiveRecord::Migration[5.0]
  def change
    change_column :searches, :isbn, :decimal
    change_column :searches, :title, :string, limit: 100
    change_column :searches, :description, :string, limit: 500
  end
end

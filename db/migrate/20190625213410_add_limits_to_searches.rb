class AddLimitsToSearches < ActiveRecord::Migration[5.0]
  def change
    change_column :searches, :isbn, :string, limits: 13
    change_column :searches, :title, :string, limit: 100
    change_column :searches, :description, :text, limit: 500
    change_column :searches, :author, :string, limit: 100
  end
end

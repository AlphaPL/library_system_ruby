class AddLimitToSearches < ActiveRecord::Migration[5.0]
  def change
    change_column :searches, :author, :string, limit: 100
  end
end

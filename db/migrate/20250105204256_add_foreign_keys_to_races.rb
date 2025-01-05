class AddForeignKeysToRaces < ActiveRecord::Migration[8.0]
  def change
    add_index :seasons, :year, unique: true
    add_foreign_key :races, :seasons, column: :year, primary_key: :year
  end
end

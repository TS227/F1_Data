class CreateSeasons < ActiveRecord::Migration[8.0]
  def change
    create_table :seasons do |t|
      t.integer :year
      t.string :url

      t.timestamps
    end
  end
end
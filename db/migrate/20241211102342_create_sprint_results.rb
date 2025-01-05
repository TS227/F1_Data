class CreateSprintResults < ActiveRecord::Migration[8.0]
  def change
    create_table :sprint_results do |t|
      t.integer :result_id
      t.integer :race_id
      t.integer :driver_id
      t.integer :constructor_id
      t.integer :number
      t.integer :grid
      t.integer :position
      t.string :position_text
      t.integer :position_order
      t.decimal :points
      t.integer :laps
      t.string :time
      t.integer :milliseconds
      t.integer :fastest_lap
      t.string :fastest_lap_time
      t.integer :status_id

      t.timestamps
    end
  end
end

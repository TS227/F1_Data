class AddForeignKeysToTables < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :constructor_results, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :constructor_results, :constructors, column: :constructor_id, primary_key: :constructor_id

    add_foreign_key :constructor_standings, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :constructor_standings, :constructors, column: :constructor_id, primary_key: :constructor_id

    add_foreign_key :driver_standings, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :driver_standings, :drivers, column: :driver_id, primary_key: :driver_id

    add_foreign_key :lap_times, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :lap_times, :drivers, column: :driver_id, primary_key: :driver_id

    add_foreign_key :pit_stops, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :pit_stops, :drivers, column: :driver_id, primary_key: :driver_id

    add_foreign_key :qualifications, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :qualifications, :drivers, column: :driver_id, primary_key: :driver_id
    add_foreign_key :qualifications, :constructors, column: :constructor_id, primary_key: :constructor_id

    add_foreign_key :races, :circuits, column: :circuit_id, primary_key: :circuit_id

    add_foreign_key :results, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :results, :drivers, column: :driver_id, primary_key: :driver_id
    add_foreign_key :results, :constructors, column: :constructor_id, primary_key: :constructor_id
    add_foreign_key :results, :statuses, column: :status_id, primary_key: :status_id

    add_foreign_key :sprint_results, :races, column: :race_id, primary_key: :race_id
    add_foreign_key :sprint_results, :drivers, column: :driver_id, primary_key: :driver_id
    add_foreign_key :sprint_results, :constructors, column: :constructor_id, primary_key: :constructor_id
    add_foreign_key :sprint_results, :statuses, column: :status_id, primary_key: :status_id
  end
end

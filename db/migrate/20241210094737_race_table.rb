class RaceTable < ActiveRecord::Migration[8.0]
  def change
    create_table :races, id: false do |t|
      t.integer :race_id, null: false, primary_key: true         # raceId
      t.integer :year                         # year
      t.integer :round                        # round
      t.integer :circuit_id                    # circuitId
      t.string :name                          # name
      t.date :date                            # date
      t.time :time                            # time
      t.string :url                           # url
      t.date :fp1_date                        # fp1_date
      t.time :fp1_time                        # fp1_time
      t.date :fp2_date                        # fp2_date
      t.time :fp2_time                        # fp2_time
      t.date :fp3_date                        # fp3_date
      t.time :fp3_time                        # fp3_time
      t.date :quali_date                      # quali_date
      t.time :quali_time                      # quali_time
      t.date :sprint_date                     # sprint_date
      t.time :sprint_time                     # sprint_time

      t.timestamps
    end

    add_index :races, :race_id, unique: true
  end
end

class CreateStatuses < ActiveRecord::Migration[8.0]
  def change
    create_table :statuses, id: false  do |t|
      t.integer :status_id, null: false, primary_key: true
      t.string :status

      t.timestamps
    end
  end
end

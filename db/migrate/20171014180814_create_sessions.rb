class CreateSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :sessions do |t|
      t.string :date
      t.string :start_hour
      t.string :end_hour
      t.string :location
      t.integer :responsable_id

      t.timestamps
    end
  end
end

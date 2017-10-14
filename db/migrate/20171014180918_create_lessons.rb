class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.string :date
      t.string :start_hour
      t.string :end_hour
      t.integer :session_id

      t.timestamps
    end
  end
end

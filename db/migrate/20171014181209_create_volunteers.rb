class CreateVolunteers < ActiveRecord::Migration[5.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.integer :age
      t.string :institution
      t.string :student_id
      t.string :career
      t.string :email
      t.string :password
      t.integer :lesson_id
      t.integer :session_id

      t.timestamps
    end
  end
end

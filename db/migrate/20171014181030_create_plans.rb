class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :topic
      t.string :organization
      t.string :subject
      t.string :audience
      t.string :activities
      t.string :material
      t.string :description
      t.integer :lesson_id

      t.timestamps
    end
  end
end

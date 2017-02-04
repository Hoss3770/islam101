class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :points

      t.timestamps
    end
    add_index :courses, :name, unique: true
  end
end

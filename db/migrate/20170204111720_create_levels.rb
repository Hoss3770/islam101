class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :points
     	t.references(:course, index: true)
      t.timestamps
    end
    add_index :levels, :name, unique: true
  end
end

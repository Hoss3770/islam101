class CreateLesons < ActiveRecord::Migration[5.0]
  def change
    create_table :lesons do |t|
      t.string :name
      t.text :description
      t.integer :index
      t.integer :points
      t.references(:level, index: true)
      t.timestamps
    end

  end
end
